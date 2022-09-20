import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../services/connection_service.dart';
import '../services/http_service.dart';

class ClientRepository {
  late Dio dio;
  late HttpClientService _httpClientService;

  ClientRepository() {
    final options = BaseOptions(
      baseUrl: 'https://cryptowatch-server.herokuapp.com',
      receiveDataWhenStatusError: true,
      connectTimeout: 60 * 1000, // 60 seconds
      receiveTimeout: 60 * 1000,
    );

    dio = Dio(options);

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (
          options,
          handler,
        ) async {
          if (!await ConnectionStatus.isConnected()) {
            handler.reject(
              DioError(
                  requestOptions: options,
                  error:
                      'Oops! Looks like you\'re not connected to the internet. Check your internet connection and try again'),
            );
          }
          handler.next(options);
        },
      ),
    );
    if (kDebugMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
        ),
      );
    }
  }
}
