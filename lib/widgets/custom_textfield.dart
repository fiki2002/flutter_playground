import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.labelText,
    this.isPassword = false,
  }) : super(key: key);
  final String hintText;
  final String labelText;
 final  bool isPassword;
  @override
  Widget build(BuildContext context) {
    return TextField(
      // if(isPassword == true){obscureText: true,},
                
      
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
