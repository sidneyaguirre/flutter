import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handleAnswer;
  final String answerText;

  Answer(this.handleAnswer, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answerText),
        onPressed: handleAnswer,
        ),
    );
  }
}