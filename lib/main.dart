import 'package:first_project/containers/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          body: GradientContainer(
        [
          Colors.green.shade100,
          Colors.green.shade200,
          Colors.green.shade300,
          Colors.green.shade400,
        ],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      )),
    ),
  );
}
