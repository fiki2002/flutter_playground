import 'package:flutter/material.dart';

import '../widgets/custom_textfield.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign up page'),),
      body: Column(
        children: const [
            CustomTextField(
            labelText: 'Email',
            hintText: 'Please input your Email',
          ),
            CustomTextField(
            labelText: 'Password',
            hintText: 'Please input your Password',
          ),
            CustomTextField(
            labelText: 'Confirm Password',
            hintText: 'Input password again',
          ),
        ],
      ),
    );
  }
}
