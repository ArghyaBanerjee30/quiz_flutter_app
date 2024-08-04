import 'package:flutter/material.dart';
import 'package:quiz_app/data/question.dart';
import 'package:quiz_app/model/customise_widgets/outlined_button.dart';
import 'package:quiz_app/model/question_summary/question_summary.dart';
import 'package:quiz_app/model/customise_widgets/text_design.dart';

int totalAnswers = questions.length;

class ResultScreen extends StatelessWidget {
  final List<String> selectedAnswers;
  final void Function() restartGame;

  const ResultScreen(this.selectedAnswers ,this.restartGame, {super.key});

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for(int i=0; i<selectedAnswers.length; i++) {
      summary.add({
        'index': i,
        'question': questions[i].question,
        'correct-answer': questions[i].options[0],
        'user-answer': selectedAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    List<Map<String, Object>> summary = getSummaryData();
    int correctAnswers = summary.where((data) {
      return data['correct-answer'].toString() == data['user-answer'].toString();
    }).length;
    
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextDesign(
              'You answered $correctAnswers out of $totalAnswers questions correctly!',
              const Color.fromARGB(255, 248, 171, 232),
              20.0,
              weight: FontWeight.bold,
            ),
            const SizedBox(height: 40,),
            QuestionSummary(summary),
            const SizedBox(height: 40,),
            CustomButton(
              text: 'Restart Quiz',
              action: restartGame,
              textColor: Colors.white,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
