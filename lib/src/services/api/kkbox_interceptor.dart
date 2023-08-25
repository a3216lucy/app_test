import 'package:dio/dio.dart';

class KKBOXInterceptor extends Interceptor {
  /// 攔截 api 請求
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers.addAll({
      'Content-Type': 'application/json; charset=UTF-8',
      "Authorization": "Bearer F3VUBMwlpYkTgxvsWWwD6Q=="
    });
    handler.next(options);
  }

  /// 攔截 api 回應
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }

  /// 錯誤處理
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    return handler.next(err);
  }
}
