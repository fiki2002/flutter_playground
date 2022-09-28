import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/signup_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://cryptowatch-server.herokuapp.com/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST("auth/signup")
  Future<SignUpDataModel> registerUser(@Body() Map<String, dynamic> inputValue);
}
 