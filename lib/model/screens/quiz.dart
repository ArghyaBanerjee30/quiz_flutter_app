import 'package:flutter/material.dart';
import 'package:quiz_app/data/question.dart';
import 'package:quiz_app/model/screens/home_page.dart';
import 'package:quiz_app/model/screens/question_screen.dart';
import 'package:quiz_app/model/screens/result.dart';

const startAlignment = Alignment. topCenter;
const endAlignment = Alignment.bottomCenter;

class Quiz extends StatefulWidget {
  final List<Color> colorList;
  const Quiz(this.colorList, {super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  dynamic activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = HomePage(startGame);
  }

  void startGame() {
    setState(() {
      activeScreen = QuestionScreen(selectedAnswers: addSelectedAnswers);
    });
  }

  void addSelectedAnswers(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultScreen(List.of(selectedAnswers), startGame,);
        selectedAnswers = [];
      });
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: widget.colorList,
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: Center(
            child: activeScreen,
          ),
        ),
      ),
    );
  }
}