import 'package:flutter/material.dart';
import 'package:quiz_app/model/customise_widgets/image.dart';
import 'package:quiz_app/model/customise_widgets/outlined_button.dart';
import 'package:quiz_app/model/customise_widgets/text_design.dart';

class HomePage extends StatelessWidget {
  final void Function() startGame;
  const HomePage(this.startGame, {super.key});

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const CustomImage('assets/quiz-logo.png', 200),
        const SizedBox(height: 50,),
        const TextDesign('Learn Flutter the fun way!', Colors.white, 28.0, align: TextAlign.center),
        const SizedBox(height: 30,),
        CustomButton(text:'Start Quiz', foregroundColor: Colors.white, textColor: Colors.white, size: 16.0, action: startGame),
      ],
    );
  }
}
