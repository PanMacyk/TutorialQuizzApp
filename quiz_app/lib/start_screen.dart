import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.onStartPressed, {super.key});

  final void Function() onStartPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(54, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Quiz Start Screen",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            onPressed: onStartPressed,
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("START"),
          )
        ],
      ),
    );
  }
}
