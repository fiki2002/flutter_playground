import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('You are Welcome!'),
      ),
      body: Column(
        children: const [
          Center(
            child: Text('I got here!',style: TextStyle(fontSize: 40,),),
          ),
        ],
      ),
    );
  }
}
