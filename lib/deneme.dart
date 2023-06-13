import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 46, 0, 127),
          Color.fromARGB(255, 17, 0, 62),
        ),
      ),
    ),
  );
}
