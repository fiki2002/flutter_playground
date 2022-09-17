import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/screens/sign_up.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Login Page'),
      ),
      body: Column(
        children: [
          const CustomTextField(
            labelText: 'Email',
            hintText: 'Please input your Email',
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextField(
            labelText: 'Password',
            hintText: 'Please input your Password',
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomButton(text: 'Log In'),
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
              text: 'New here? ',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
              children: [
                TextSpan(
                  text: 'Create an account',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 11,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: ((context) => const SignUpPage()),
                          ),
                        ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
