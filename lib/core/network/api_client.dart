// dio_client.dart



import 'package:dio/dio.dart';

import '../result/result.dart';

class DioClient {
  final Dio _dio;

  DioClient(String baseUrl) : _dio = Dio(BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: const Duration(seconds: 20),
    receiveTimeout: const Duration(seconds: 20),

    headers: {
      'Accept': 'application/json',
    },
  ));
  Future<Result<T>> callApi<T>({
    required String endpoint,
    required T Function(Map<String, dynamic>) fromJson,
    Map<String, dynamic>? data,
    Map<String, dynamic>? query,
    String method = 'POST',
    bool requiresAuth = false,
    String? token,
  }) async {
    print("👉 Using DioClient with timeout: ${_dio.options.receiveTimeout}");

    try {
      if (requiresAuth && token != null) {
        _dio.options.headers['Authorization'] = 'Bearer $token';
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


      final json = response.data;
      print(json);
      final status = json is Map<String, dynamic> && json.containsKey('status') ? json['status'] : false;

      if (status != null && status is bool && status == true) {
        print('🔥 Response JSON: $json');
        print('✅ status field: ${json['status']}');
        return Success(data: fromJson(json));

      } else {
        final message = json is Map<String, dynamic> && json.containsKey('message') && json['message'] != null
            ? json['message'].toString()
            : 'Unknown error';
        return Error<T>(e: message);
      }

    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.connectionError ||
          e.type == DioExceptionType.unknown) {
        return ConnectionError<T>();
      }
      return Error<T>(
          e: e.response?.data['message']?.toString() ?? e.message);
    } catch (e) {
      return Error<T>(e: e.toString());
    }
  }

}
