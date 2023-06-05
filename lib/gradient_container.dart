import 'package:flutter/material.dart';
import 'package:my_first_app/styled_text.dart';
import 'package:my_first_app/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradiantContainer extends StatelessWidget {
  GradiantContainer(this.colors, {super.key});

  List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
