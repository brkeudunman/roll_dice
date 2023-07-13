import 'package:first_project/customWidgets/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Alignment begin;
  final Alignment end;
  final List<Color> colors;

  const GradientContainer(this.colors,
      {this.begin = Alignment.topLeft,
      this.end = Alignment.bottomRight,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: begin, end: end, colors: colors),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
