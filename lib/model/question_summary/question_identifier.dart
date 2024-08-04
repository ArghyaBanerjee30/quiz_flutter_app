import 'package:flutter/material.dart';
import 'package:quiz_app/model/customise_widgets/text_design.dart';

class QuestionIdentifier extends StatelessWidget {
  final String questionNumber;
  final bool isCorrectAnswer;

  const QuestionIdentifier(this.questionNumber, this.isCorrectAnswer,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      margin: const EdgeInsets.only(right: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer 
        ? const Color.fromARGB(255, 106, 178, 237)
        : const Color.fromARGB(255, 231, 106, 148),
        borderRadius: BorderRadius.circular(100),
      ),
      child: TextDesign(
        questionNumber,
        Colors.white,
        20,
    ));
  }
}
