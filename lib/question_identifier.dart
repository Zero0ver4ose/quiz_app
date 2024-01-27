import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key, required this.isCorrectAnswer, required this.questionIndex});

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isCorrectAnswer
              ? const Color.fromARGB(255, 2, 184, 14)
              : const Color.fromARGB(233, 232, 2, 2),
              borderRadius: BorderRadius.circular(100)
              ),
              child: Text(questionNumber.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255)
              ),
              ),
              );
  }
}
