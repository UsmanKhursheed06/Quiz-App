import 'package:flutter/material.dart';
import 'answer_buttons_styling.dart';

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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('The question is'),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(anstext: 'Answer1', onTap: () {}),
          AnswerButton(anstext: 'Answer2', onTap: () {}),
          AnswerButton(anstext: 'Answer3', onTap: () {}),
          AnswerButton(anstext: 'Answer4', onTap: () {}),
        ],
      ),
    );
  }
}
