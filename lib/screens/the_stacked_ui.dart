import 'package:flutter/material.dart';

import '../widgets/tags_widgets.dart';

class TheStackedUi extends StatelessWidget {
  final Tags tags = const Tags();
  const TheStackedUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Loyalty Cards',
                    style: TextStyle(
                      color: Colors.grey.withOpacity(0.4),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const Text(
                    ' Menu',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              tags,
            ],
          ),
        ),
      ),
    );
  }
}
