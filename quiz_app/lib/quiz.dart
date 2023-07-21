import 'package:flutter/material.dart';
import "package:quiz_app/start_screen.dart";
import "package:quiz_app/questions_screen.dart";

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(
      () {
        activeScreen = const QuestionScreen();
      },
    );
  }

  @override
  Widget build(contex) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 128, 26, 153),
                Color.fromARGB(255, 98, 6, 110)
              ],
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
