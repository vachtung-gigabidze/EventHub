import 'package:flutter/material.dart';

class ShareElementWidget extends StatelessWidget {
  const ShareElementWidget(
      {super.key, required this.imagePath, required this.text});
  final String imagePath;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          height: 60,
          width: 60,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 13),
        ),
      ],
    );
  }
}
