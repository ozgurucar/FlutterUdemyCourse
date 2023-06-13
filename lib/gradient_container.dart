import 'package:flutter/material.dart';

import 'package:first_app/styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  // initialization work

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: const [
              Color.fromARGB(255, 77, 21, 173),
              Color.fromARGB(255, 8, 3, 70),
            ],
            begin: startAlignment,
            end: endAlignment,
          ),
        ),
        child: const Center(
          child: StyledText(),
        ));
  }
}
