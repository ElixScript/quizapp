import 'package:basics/answer_button.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('the question...',style: TextStyle(color: Colors.white),),
          const SizedBox(height: 30),
          AnswerButton(
            answerText: 'answer 1' , 
            onTap: (){} 
          ),
          const SizedBox(height: 10),
          AnswerButton(
            answerText: 'answer 2' , 
            onTap: (){} 
          ),
          const SizedBox(height: 10),
          AnswerButton(
            answerText: 'answer 3' , 
            onTap: (){} 
          )
        ],
      ),
    );
  }
}
