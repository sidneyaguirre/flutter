import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 50,
                color: Colors.blue[100],
                child: Card(
                  child: Text('chart'),
                ),
              ),
              Card(child: Text('List of trans')),
            ],
          )),
    );
  }
}
