import 'package:first_project/customWidgets/title.dart';
import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceChoice = 1;

  void rollDice() {
    setState(() {
      diceChoice = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$diceChoice.png',
          width: 200,
        ),
        TextButton(
            onPressed: rollDice,
            style:
                TextButton.styleFrom(padding: const EdgeInsets.only(top: 12)),
            child: const TitleWidget("Roll Dice"))
      ],
    );
  }
}
