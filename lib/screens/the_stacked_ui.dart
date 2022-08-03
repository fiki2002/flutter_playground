import 'package:flutter/material.dart';


class TheStackedUi extends StatelessWidget {
  const TheStackedUi({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar()
    );
  }
}