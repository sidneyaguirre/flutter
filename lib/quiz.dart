import 'package:flutter/material.dart';

import 'question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //accesses the object based on the index, and then the key needed
        Question(
          questions[questionIndex]['questionText'],
        ),
        //create the buttons dinamicly
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
