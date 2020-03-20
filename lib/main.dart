import 'package:flutter/material.dart';
import 'package:flutter_course/view/tx-list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: TransactionList(),
    ));
  }
}
