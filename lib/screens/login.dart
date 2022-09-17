import 'package:flutter/material.dart';

import '../widgets/custom_textfield.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
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
        ],
      ),
    );
  }
}
