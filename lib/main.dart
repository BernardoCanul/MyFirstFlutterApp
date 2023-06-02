import 'package:flutter/material.dart';
import 'package:my_first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradiantContainer(),
        backgroundColor: Colors.deepPurple,
      ),
    ),
  );
}
