import 'package:flutter/material.dart';
import 'package:flutter_playground/screens/the_stacked_ui.dart';

void main() => runApp( const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Playground',
      debugShowCheckedModeBanner: false,
      home: TheStackedUi(),
    );
  }
}
