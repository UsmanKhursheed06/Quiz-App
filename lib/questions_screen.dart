import 'package:flutter/material.dart';
import 'answer_buttons_styling.dart';
import 'package:second_app/data/questions_answers.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});
  @override
  State<Questions> createState() {
    return _Questions();
  }
}

class _Questions extends State<Questions> {
  @override
  Widget build(context) {
final currentQuestion=questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(currentQuestion.text,style: TextStyle(color: Colors.white),) ,
          const SizedBox(
            height: 30,
          ),

          ...currentQuestion.answers.map((items){
            return AnswerButton(anstext: items, onTap: (){});
          }),//we have converted the string list into the list of widgets and used the spread operator to take out the list from a list and using it as simple widgets basically making the buttons dynamically which is very important concept..

          // AnswerButton(anstext: currentQuestion.answers[0], onTap: () {}),
          // AnswerButton(anstext:currentQuestion.answers[1], onTap: () {}),
          // AnswerButton(anstext: currentQuestion.answers[2], onTap: () {}),
          // AnswerButton(anstext: currentQuestion.answers[3], onTap: () {}),
        ],
      ),
    );
  }
}
