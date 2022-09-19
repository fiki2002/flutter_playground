import 'package:flutter/cupertino.dart';

import '../app/base_notifier.dart';

class UserProvider extends BaseChangeNotifier {
  Map<String, dynamic> _signUpData = {};
  Map<String, dynamic> get signUpData => _signUpData;

  setSignUpData(
    String email,
    String password,
    String confirmPassword,
  ) {
    var param = {
      'email': email,
      'password': password,
      'confirmPassword': confirmPassword,
    };
    _signUpData = param;
    notifyListeners();
  }

  Future<void> signUp({required BuildContext context, required String email, required String password, required String confirmPassword } )async{
   
  }
}
