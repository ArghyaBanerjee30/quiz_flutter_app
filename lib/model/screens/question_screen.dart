import 'package:flutter/material.dart';
import 'package:quiz_app/data/question.dart';
import 'package:quiz_app/model/customise_widgets/outlined_button.dart';
import 'package:quiz_app/model/customise_widgets/text_design.dart';

class QuestionScreen extends StatefulWidget {
  final Function(String answer)? selectedAnswers;
  const QuestionScreen({this.selectedAnswers, super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int questionNumber = 0;

  void nextTab(String answer) {
    widget.selectedAnswers!(answer);
    setState(() {
      questionNumber++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[questionNumber];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextDesign(
              currentQuestion.question,
              const Color.fromARGB(255, 248, 171, 232),
              20.0,
              align: TextAlign.center,
              weight: FontWeight.bold,
            ),

            const SizedBox(
              height: 30,
            ),

            ...currentQuestion.getShuffle().map((item) {
              return CustomButton(
                text: item,
                action: () {
                  nextTab(item);
                },
                size: 16,
                backgroundColor: const Color.fromARGB(255, 29, 4, 71),
                textColor: Colors.white,
              );
            }),
          ],
        ),
      ),
    );
  }
}
