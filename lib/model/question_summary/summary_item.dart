import 'package:flutter/material.dart';
import 'package:quiz_app/model/question_summary/question_identifier.dart';
import 'package:quiz_app/model/customise_widgets/text_design.dart';

class SummaryItem extends StatelessWidget {
  final Map<String, Object> itemData;
  const SummaryItem(this.itemData, {super.key});

  @override
  Widget build(BuildContext context) {
    final bool isCorrectAnswer =
        itemData['user-answer'] == itemData['correct-answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
            ((itemData['index'] as int) + 1).toString(), isCorrectAnswer),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextDesign(
                itemData['question'].toString(),
                Colors.white,
                16,
                weight: FontWeight.bold,
              ),
              const SizedBox(
                height: 5,
              ),
              TextDesign(
                itemData['correct-answer'].toString(),
                const Color.fromARGB(255, 231, 106, 148),
                14,
              ),
              TextDesign(
                itemData['user-answer'].toString(),
                const Color.fromARGB(255, 106, 178, 237),
                14,
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        )
      ],
    );
  }
}
