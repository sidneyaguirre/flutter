import 'package:flutter/material.dart';
import 'package:flutter_course/view/add-tx-form.dart';
import 'package:intl/intl.dart'; //needed to be added in dependencies in pubspec

import '../model/transaction.dart';

class TransactionList extends StatefulWidget {
  TransactionList({Key key}) : super(key: key);

  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> transactions = [
    Transaction(id: 0, title: 'shoes', amount: 69.99, date: DateTime.now()),
    Transaction(id: 0, title: 'Groceries', amount: 19.99, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 50,
                color: Colors.blue[100],
                child: Card(
                  child: Text('chart'),
                ),
              ),
              AddTransactionForm(),
              Column(
                children: transactions.map((tx) {
                  return Card(
                      child: Row(children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange)),
                      child: Text(
                        "\$${tx.amount}",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          tx.title,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          DateFormat().format(tx.date),
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ]));
                }).toList(),
              ),
            ],
          )
    );
  }
}