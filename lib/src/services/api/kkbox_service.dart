import 'package:app_test/src/models/search.dart';
import 'package:app_test/src/services/api/http_client.dart';
import 'package:dio/dio.dart';

/// KKBOX API 服務
class KKBOXService {
  final Dio _dio = DioClient().dio;

  // 呼叫 API
  Future<Search> search() async {
    final response = await _dio.get('/search?q=理想混蛋&type=track&territory=TW');

    return Search.fromJson(response.data);
  }
}
