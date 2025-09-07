import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';
import '../result/result.dart';

class DioClient {
  final Dio _dio;

  DioClient(String baseUrl)
      : _dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
      headers: {'Accept': 'application/json'},
      validateStatus: (code) => code != null && code < 400,
    ),
  );

  // ---------- logging helpers (بدون قصّ) ----------
  void _logLong(String text, {int chunk = 800}) {
    if (!kDebugMode) return;
    final re = RegExp('.{1,$chunk}', dotAll: true);
    for (final m in re.allMatches(text)) {
      print(m.group(0)); // print يتفادى قصّ debugPrint
    }
  }

  void _logJson(Object? data) {
    if (!kDebugMode) return;
    try {
      _logLong(const JsonEncoder.withIndent('  ').convert(data));
    } catch (_) {
      _logLong(data.toString());
    }
  }

  void _log(Object? msg) {
    if (kDebugMode) print(msg);
  }

  void _logTxIdFromBody(dynamic body) {
    try {
      final m = body as Map;
      final tx = (m['data']?['payment']?['transaction_id'])?.toString();
      if (tx != null) _log('TX: $tx');
    } catch (_) {}
  }

  Future<Result<T>> callApi<T>({
    required String endpoint,
    required T Function(Map<String, dynamic> json) fromJson,
    dynamic data,
    Map<String, dynamic>? query,
    String method = 'POST',
    bool requiresAuth = false,
    String? token,
  }) async {
    try {
      if (requiresAuth && token != null) {
        _dio.options.headers['Authorization'] = 'Bearer $token';
      }

      // ---------- request log ----------
      final sw = Stopwatch()..start();
      if (kDebugMode) {
        final hdrs = Map<String, dynamic>.from(_dio.options.headers);
        if (hdrs['Authorization'] != null) hdrs['Authorization'] = 'Bearer ***';
        _log('--> $method $endpoint');
        if (query != null) {
          _log('QUERY:');
          _logJson(query);
        }
        if (data != null) {
          _log('BODY :');
          _logJson(data);
        }
        _log('HDRS :');
        _logJson(hdrs);
      }

      late Response response;
      switch (method.toUpperCase()) {
        case 'GET':
          response = await _dio.get(endpoint, queryParameters: query);
          break;
        case 'POST':
          response = await _dio.post(endpoint, data: data);
          break;
        case 'PUT':
          response = await _dio.put(endpoint, data: data);
          break;
        case 'DELETE':
          response = await _dio.delete(endpoint, data: data);
          break;
        default:
          return Error<T>(e: 'Unsupported HTTP method: $method');
      }
      sw.stop();

      // ---------- response log (كامل) ----------
      if (kDebugMode) {
        _log('<-- ${response.statusCode} $method $endpoint (${sw.elapsedMilliseconds} ms)');
        _log('RESP:');
        _logJson(response.data);

        // اطبع الـ transaction_id تحديداً لضربة الدفع
        if (endpoint.contains('/Booking/pay')) {
          _logTxIdFromBody(response.data);
        }
      }

      final dynamic body = response.data;
      if (body is! Map<String, dynamic>) {
        return Error<T>(e: 'Unexpected response type: ${body.runtimeType}');
      }

      final json = body as Map<String, dynamic>;
      final hasStatus = json.containsKey('status');

      if (!hasStatus || json['status'] == true) {
        final parsed = fromJson(json);
        return Success<T>(data: parsed);
      } else {
        final msg = (json['message'] ?? 'Unknown error').toString();
        return Error<T>(e: msg);
      }
    } on DioException catch (e) {
      if (kDebugMode) {
        _log('xx ERR ${e.type} ${e.response?.statusCode ?? ''} $method $endpoint');
        final rd = e.response?.data;
        if (rd != null) {
          _log('ERRB:');
          _logJson(rd);
        }
      }

      final code = e.response?.statusCode;
      final messageFromServer = e.response?.data is Map<String, dynamic>
          ? (e.response?.data['message']?.toString())
          : null;

      if (code == 401) return Error<T>(e: messageFromServer ?? 'Unauthorized (401)');
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.connectionError ||
          e.type == DioExceptionType.unknown) {
        return ConnectionError<T>();
      }
      return Error<T>(e: messageFromServer ?? e.message ?? 'Request failed');
    } catch (e) {
      if (kDebugMode) _log('xx CATCH $method $endpoint -> $e');
      return Error<T>(e: e.toString());
    }
  }
}
