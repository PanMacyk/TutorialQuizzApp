import "package:flutter/material.dart";
import "answer_button.dart";
import "package:quiz_app/data/questions.dart";
import "package:google_fonts/google_fonts.dart";

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void onAnswerButtonClicked(String answer) {
    widget.onSelectAnswer(answer);

    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(contex) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              textAlign: TextAlign.center,
              currentQuestion.text,
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 229, 172, 236),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getSchuffledAnswers().map((answer) {
              return AnswerButton(
                  answerText: answer,
                  onButtonPressed: () {
                    onAnswerButtonClicked(answer);
                  });
            }),
          ],
        ),
      ),
    );
  }
}
