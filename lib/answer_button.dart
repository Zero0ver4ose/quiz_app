import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerText, this.onTap, {super.key});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 81, 151, 0),
          foregroundColor: const Color.fromARGB(255, 250, 250, 250),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
      child: Text(answerText, textAlign: TextAlign.center,),
    );
  }
}
