import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp()); //this kindof arrow function is only when the function has one expression

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
  }

  @override //decorator: "build" method from StatelessWidget class wont be considered, but mine here will
  Widget build(BuildContext context) {

    var questions = [
      'What\'s your favorite animal?',
      'What\'s your favorite color?',
      'What\'s your favorite food?',
      'What\'s your favorite place?',
      'What\'s your favorite beverage?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions.elementAt(questionIndex),),
            RaisedButton(child: Text('Answer 1'), onPressed: _answerQuestion,),
            RaisedButton(child: Text('Answer 2'), onPressed: _answerQuestion,),
            RaisedButton(child: Text('Answer 3'), onPressed: _answerQuestion,),
          ],
        ),
      ),
    );
  }
}
