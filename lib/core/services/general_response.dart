import 'api_error_response.dart';

class GeneralResponse<T> {
  final bool success;
  final String message;
  final ApiErrorResponse? error;
  final T? data;

  GeneralResponse({
    this.success = false,
    this.message = '',
    this.error,
    this.data,
  });

  
}
