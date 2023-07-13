import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String text;
  final FontWeight weight;
  final double fontSize;
  final Color color;

  const TitleWidget(this.text,
      {super.key,
      this.color = Colors.white,
      this.weight = FontWeight.bold,
      this.fontSize = 24});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: weight,
      ),
    );
  }
}
