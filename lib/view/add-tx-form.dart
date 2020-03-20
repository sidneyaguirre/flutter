import 'package:flutter/material.dart';

import '../presenter/tx-presenter.dart';

class AddTransactionForm extends StatelessWidget {
  const AddTransactionForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: "Title"),
            ),
            TextField(
              controller: amountController,
              decoration: InputDecoration(labelText: "Amount"),
            ),
            FlatButton(
              child: Text('Add Transaction'),
              textColor: Colors.orange,
              onPressed: (){
                print(titleController.text);
                print(amountController.text);
              },
            )
          ]),
        ),
      ),
    );
  }
}
