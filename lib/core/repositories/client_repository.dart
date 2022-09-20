import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:flutter/foundation.dart';

import '../services/connection_service.dart';



class HttpClientService {
  late Dio dio;

  HttpClientService() {
    final options = BaseOptions(
      baseUrl: 'https://cryptowatch-server.herokuapp.com',
      receiveDataWhenStatusError: true,
      connectTimeout: 60 * 1000, // 60 seconds
      receiveTimeout: 60 * 1000, // 60 seconds
    );
    dio = Dio(options);
    dio.interceptors.add(
      InterceptorsWrapper(
        //onRequest
        onRequest: (
          options,
          handler,
        ) async {
          //Reject request if there is no internet
          if (!await ConnectionStatus.isConnected()) {
            handler.reject(
              DioError(
                  requestOptions: options,
                  error:
                      'Oops! Looks like you\'re not connected to the internet. Check your internet connection and try again.'),
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
