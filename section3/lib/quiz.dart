import "package:flutter/material.dart";
import "package:section3/questions_screen.dart";
import "package:section3/start_screen.dart";
import 'package:section3/data/questions.dart';
import 'package:section3/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz(void Function() startQuiz, {super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List <String> selectedAnswers = [];
  var activeScreen = "start-screen";

  void switchScreen() {
    setState(()  {
        activeScreen = "questions-screen";
      });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = "results-screen";
        selectedAnswers = [];
      });

    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == "questions-screen") {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == "results-screen"){
      screenWidget = ResultScreen(chosenAnswers: selectedAnswers,);
    }

    return MaterialApp(
        home: Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget),
    ),
    );
  }
}
