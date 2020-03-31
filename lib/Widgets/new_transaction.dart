import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {

    final titleController = TextEditingController();
  final amountController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return           Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Card(
                  child: TextField(
                    style: TextStyle(fontSize: 18),
                    decoration: InputDecoration(labelText: "Title"),
                    controller: titleController,
                    // onChanged: (tValue) => titleText = tValue,
                  ),
                ),
                Card(
                  child: TextField(
                    style: TextStyle(fontSize: 25),
                    decoration: InputDecoration(labelText: "Amount"),
                    controller: amountController,
                    // onChanged: (aValue) => amountText = aValue,
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    print(titleController.text);
                    print(amountController.text);
                  },
                  child: Text('Save Transaction'),
                  textColor: Colors.indigo,
                )
              ],
            ),
          );
  }
}