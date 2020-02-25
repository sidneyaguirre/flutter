import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(
    MyApp()); //this kindof arrow function is only when the function has one expression

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
      'answers': ['Cat', 'Dog', 'Bird', 'Dragon'],
    },
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'Pink'],
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': ['Bandeja Paisa', 'Pasta', 'Pizza', 'Ramen'],
    },
    {
      'questionText': 'What\'s your favorite place?',
      'answers': ['Mountain', 'Home', 'Town', 'City'],
    },
    {
      'questionText': 'What\'s your favorite beverage?',
      'answers': ['Bear', 'Juice', 'Water', 'Soda'],
    },
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
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
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(answerQuestion:_answerQuestion, questions: _questions, questionIndex: _questionIndex)
            : Result(),
      ),
    );
  }
}
