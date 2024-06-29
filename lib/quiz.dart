import 'package:flutter/material.dart';
import 'package:second_app/data/questions_answers.dart';
import 'package:second_app/questions_screen.dart';
import 'package:second_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {

List<String> selectedAnswers=[];


  var activeScreen = 'start-screen';

// @override
//   void initState() {
//     activeScreen= StartScreen(switchScreen);
//     super.initState();
//   }

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer)
  {
    selectedAnswers.add(answer);
    if(selectedAnswers.length==questions.length)
    {setState(() {
      activeScreen='start-screen';
    });}
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: activeScreen == 'start-screen'
              ? StartScreen(switchScreen)
              :  Questions(onSelectAns: chooseAnswer),
        ),
      ),
    );
  }
}
