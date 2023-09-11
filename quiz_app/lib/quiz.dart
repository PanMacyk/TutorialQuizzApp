import 'package:flutter/material.dart';
import "package:quiz_app/data/questions.dart";
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
  List<String> selectedAnswers = [];
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(
      () {
        activeScreen = QuestionScreen(
          onSelectAnswer: chooseAnswer,
        );
      },
    );
  }

  void chooseAnswer(String selectedAnswer) {
    selectedAnswers.add(selectedAnswer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers.clear();
        activeScreen = StartScreen(switchScreen);
      });
    }
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
