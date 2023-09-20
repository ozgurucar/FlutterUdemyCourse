import 'package:adv_basics/rotate_screen.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 100),
          Image.asset(
            'assets/images/quiz-logo.png',
            alignment: Alignment.topCenter,
            width: 300,
            color: const Color.fromARGB(136, 224, 224, 224),
          ),
          const SizedBox(height: 30),
          Text(
            'Learn Flutter the fun way!',
            style: TextStyle(color: Colors.grey.shade300, fontSize: 18),
          ),
          const SizedBox(height: 50),
          OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_forward),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
