import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //we use both, to say that question wont change during runtime, and to say that the value of questions won't ever change
  //final: runtime constant
  //const: compile time constant

  final _questions = const [
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 5},
        {'text': 'Bird', 'score': 3},
        {'text': 'Dragon', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': [
        {'text': 'Bandeja Paisa', 'score': 10},
        {'text': 'Pasta', 'score': 5},
        {'text': 'Pizza', 'score': 3},
        {'text': 'Ramen', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite place?',
      'answers': [
        {'text': 'Mountain', 'score': 10},
        {'text': 'Home', 'score': 5},
        {'text': 'Town', 'score': 3},
        {'text': 'City', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite beverage?',
      'answers': [
        {'text': 'Beer', 'score': 10},
        {'text': 'Juice', 'score': 5},
        {'text': 'Water', 'score': 3},
        {'text': 'Soda', 'score': 1}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    this._totalScore += score;
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex += 1;
      });
    }
  }

  @override //decorator: "build" method from StatelessWidget class wont be considered, but mine here will
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(_totalScore),
      ),
    );
  }
}
