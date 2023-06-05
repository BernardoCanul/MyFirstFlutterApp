import 'package:flutter/material.dart';
import 'package:my_first_app/gradient_container.dart';

const List<Color> colors = [
  Color.fromARGB(255, 26, 2, 80),
  Color.fromARGB(225, 45, 7, 98)
];

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradiantContainer(colors),
        backgroundColor: Colors.deepPurple,
      ),
    ),
  );
}
