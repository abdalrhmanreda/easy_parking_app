import 'dart:async';

import 'package:dio/dio.dart';
import 'package:easy_parking_app/core/user/api/api_constant.dart';
import 'package:flutter/cupertino.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: ApiConstant.baseUrl,
        receiveDataWhenStatusError: true,
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );
    debugPrint('Initial Dio');
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

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String lang = 'en',
    String? token,
  }) {
    dio.options.headers = {
      'lang': lang,
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    var respone = dio.post(url, queryParameters: query, data: data);
    return respone;
  }
}
