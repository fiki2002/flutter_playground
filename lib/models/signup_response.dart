class SignUpDataModel {
  final String email;
  final String password;
  final String confirmPassword;

  SignUpDataModel({
    required this.email,
    required this.password,
    required this.confirmPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'password': password,
      'confirmPassword': confirmPassword,
    };
  }
}
