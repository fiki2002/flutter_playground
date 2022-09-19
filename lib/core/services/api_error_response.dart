class ApiErrorResponse {
  final ApiErrorType type;
  final String message;
  final Map<String, dynamic>? data;
  final int? errorCode;
  final bool? shouldDisplayError;

  const ApiErrorResponse({
    this.type = ApiErrorType.unknown,
    this.data,
    required this.message,
    this.errorCode,
    this.shouldDisplayError,
  });
}


enum ApiErrorType {
  unknown,
}