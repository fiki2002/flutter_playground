import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/screens/login.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Sign up page'),
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
            height: 10,
          ),
          const CustomTextField(
            labelText: 'Confirm Password',
            hintText: 'Input password again',
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomButton(text: 'Sign Up'),
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
              text: 'Already have an account? ',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
              children: [
                TextSpan(
                  text: 'Log in',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 11,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: ((context) => const LoginPage()),
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
