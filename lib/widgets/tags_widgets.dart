import 'package:flutter/material.dart';

class Tags extends StatelessWidget {
  const Tags({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          BuildContainer(
            color: Colors.orange.shade400,
            text: 'Most\nFavorites',
            subText: '20 Items',
          ),
          BuildContainer(
            color: Colors.blue.shade400,
            text: 'Newest',
            subText: '20 Items',
          ),
          BuildContainer(
            color: Colors.lightBlueAccent
            .shade400,
            text: 'Super\nSaving',
            subText: '20 Items',
          ),
        ],
      ),
    );
  }
}

class BuildContainer extends StatelessWidget {
  const BuildContainer(
      {Key? key,
      required this.color,
      required this.text,
      required this.subText})
      : super(key: key);
  final Color color;
  final String text;
  final String subText;

  @override
  Widget build(BuildContext context) {
    final double categoryHeight = MediaQuery.of(context).size.height * 0.30;
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(12),
      width: 150,
      height: categoryHeight,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text,
              style: const TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(
            height: 10,
          ),
          Text(
            subText,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
