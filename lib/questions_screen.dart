import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
var index=0;

void changeQuestion()
{
  setState(() {
    if(index<questions.length-1)
    {index++;}
    
  });
}
  @override

  Widget build(context) {
    final currentQuestion = questions[index];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.tiltPrism(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold)
              ,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),

            ...currentQuestion.getShuffled().map((items) 
            {
              return AnswerButton(anstext: items, onTap: changeQuestion);
            }),
            
             //we have converted the string list into the list of widgets and used the spread operator to take out the list from a list and using it as simple widgets basically making the buttons dynamically which is very important concept..

            // AnswerButton(anstext: currentQuestion.answers[0], onTap: () {}),
            // AnswerButton(anstext:currentQuestion.answers[1], onTap: () {}),
            // AnswerButton(anstext: currentQuestion.answers[2], onTap: () {}),
            // AnswerButton(anstext: currentQuestion.answers[3], onTap: () {}),
          ],
        ),
      ),
    );
  }
}
