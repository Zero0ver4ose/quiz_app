import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/quiz-logo.png",
            width: 250, color: Color.fromARGB(144, 255, 255, 255)),
        const SizedBox(
          height: 40,
        ),
        Text(
          "Start the Quiz right here!",
          style: GoogleFonts.lato(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)
        ),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton.icon(
            onPressed: startQuiz,
            label: const Text("Begin Quiz",
                style: TextStyle(fontSize: 24, color: Colors.white)),
            icon: const Icon(Icons.arrow_right_alt))
      ],
    ));
  }
}
