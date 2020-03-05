import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuizHandler;
  const Result(this.resultScore, this.resetQuizHandler, {Key key})
      : super(key: key);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 12) {
      resultText = 'You are pretty likeable';
    } else if (resultScore <= 16) {
      resultText = 'You are... strangely nice!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          MaterialButton(
              child: Text(
                'Reset Quiz',
                style: TextStyle(color: Colors.blue),
              ),
              onPressed: resetQuizHandler)
        ],
      ),
    );
  }
}
