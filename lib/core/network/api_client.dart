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
      headers: {
        'Accept': 'application/json',
      },
      // خلّي Dio يرمي خطأ للستاتس >= 400
      validateStatus: (code) => code != null && code < 400,
    ),
  );

  Future<Result<T>> callApi<T>({
    required String endpoint,
    required T Function(Map<String, dynamic> json) fromJson, // 👈 نمرّر كامل الـ JSON
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

      final dynamic body = response.data;

      if (body is! Map<String, dynamic>) {
        // إذا الـ API رجعت List أو شيء غير Map، خلّي الـ fromJson يتعامل مع JsonMap
        // بس بما إن مشروعك كلّه بيرجع Map فيه status/data، فاعتبرها خطأ مفهوم.
        return Error<T>(e: 'Unexpected response type: ${body.runtimeType}');
      }

      final json = body as Map<String, dynamic>;

      // معظم الـ APIs عندك فيها status: true/false
      final hasStatus = json.containsKey('status');
      if (!hasStatus || json['status'] == true) {
        // ✅ مرّر كامل الـ JSON للبارسر (وهو يفك data حسب الحاجة)
        final parsed = fromJson(json);
        return Success<T>(data: parsed);
      } else {
        final msg = (json['message'] ?? 'Unknown error').toString();
        return Error<T>(e: msg);
      }
    } on DioException catch (e) {
      // عطِ رسالة أوضح مع الكود
      final code = e.response?.statusCode;
      final messageFromServer = e.response?.data is Map<String, dynamic>
          ? (e.response?.data['message']?.toString())
          : null;

      if (code == 401) {
        return Error<T>(e: messageFromServer ?? 'Unauthorized (401)');
      }
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.connectionError ||
          e.type == DioExceptionType.unknown) {
        return ConnectionError<T>();
      }
      return Error<T>(e: messageFromServer ?? e.message ?? 'Request failed');
    } catch (e) {
      return Error<T>(e: e.toString());
    }
  }
}
