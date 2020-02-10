import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String
      questionText; //it's a good convention to add final as in theory we could change the prop inside the class

  //constructor
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
