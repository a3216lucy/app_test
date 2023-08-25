import 'package:app_test/src/services/api/kkbox_interceptor.dart';
import 'package:dio/dio.dart';

/// [Dio] 全局設定
class DioClient {
  /// 使用 kkbox search api -> https://api.kkbox.com/v1.1/search?q=理想混蛋&type=track&territory=TW
  final Dio _dio = Dio(BaseOptions(
    baseUrl: "https://api.kkbox.com/v1.1",
    connectTimeout: const Duration(seconds: 2),
    receiveTimeout: const Duration(seconds: 2),
    responseType: ResponseType.json,
  ));

  /// [Interceptors]
  DioClient() {
    _dio.interceptors.add(KKBOXInterceptor());
  }

  Dio get dio => _dio;
}
