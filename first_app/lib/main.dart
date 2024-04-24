import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
      const MaterialApp(
    home: Scaffold(
      body:GradientContainer(Color.fromARGB(100, 5, 21, 94),
          Color.fromARGB(152, 73, 114, 222)),
    ),
  ));
}