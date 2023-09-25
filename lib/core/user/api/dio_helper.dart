import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(baseUrl: '', receiveDataWhenStatusError: true, headers: {
        'Content-Type': 'application/json',
      }),
    );
    print('Initial Dio');
  }

  static Future<Response>? getData({
    required String url,
    Map<String, dynamic>? query,
    String language = 'en',
    String? token,
  }) {
    dio.options.headers = {
      'lang': language,
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    return dio.get(url, queryParameters: query);
  }
}
