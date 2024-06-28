import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});

final void Function () startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Image(
            image: AssetImage('assets/images/quiz-logo.png'),
            width: 300,
            color: Color.fromARGB(70, 255, 255, 255),
          ),

          // const Opacity(
          //   opacity: 0.5,
          //   child: Image(
          //       image: AssetImage('assets/images/quiz-logo.png'),
          //       width: 300,

          //     ),
          // ),

          const SizedBox(height: 50),
          const Text(
            'Learn Flutter the Fun way!!',
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
          const SizedBox(height: 20),

          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start Quiz',
              //style: TextStyle(color: Colors.white, fontSize: 28),
            ),
          ),
        ],
      ),
    );
  }
}
