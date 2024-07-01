import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
 ResultsScreen({required this.chosenAnswers,super.key});

List<String> chosenAnswers;

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
             const Text('You have Answered X out of Y Questions Correctly'),
              const SizedBox(
                height: 30,
              ),
              const Text('List of Answers and Questions...'),
              const SizedBox(
                height: 30,
              ),
              TextButton.icon(

                onPressed: (){},
                style: TextButton.styleFrom(foregroundColor: Colors.white,iconColor: Colors.black),
                icon: const Icon(Icons.restart_alt),
                label:const Text('Restart Quiz'),
              ),
            ]),
      ),
    );
  }
}
