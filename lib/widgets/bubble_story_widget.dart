import 'package:flutter/material.dart';

class BubbleStory extends StatelessWidget {
  final String name;

  const BubbleStory({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            height: 90,
            width: 65,
            decoration: const BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
            ),
          ),
          Text(name),
        ],
      ),
    );
  }
}
