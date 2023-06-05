import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    var diceImg = Random().nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/images/dice-$diceImg.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 300,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.all(10),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: Text("Roll dice!"),
        ),
      ],
    );
  }
}
