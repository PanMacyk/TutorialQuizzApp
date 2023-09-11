import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onButtonPressed});

  final String answerText;
  final void Function() onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onPressed: onButtonPressed,
      child: Text(answerText,
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold)),
    );
  }
}
