import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTransaction;

  NewTransaction(this.addTransaction);

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 10),
        elevation: 7,
              child: Column(

          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
            
              style: TextStyle(fontSize: 15,),
              decoration: InputDecoration(labelText: " Title"),
              controller: titleController,
              keyboardType: TextInputType.text, //TODO: redudandant
              // onChanged: (tValue) => titleText = tValue,
            ),
            TextField(
              style: TextStyle(fontSize: 15),
              decoration: InputDecoration(labelText: " Amount"),
              controller: amountController,
              keyboardType: TextInputType.number,
              // onChanged: (aValue) => amountText = aValue,
            ),
            FlatButton(
              onPressed: () {
                addTransaction(titleController.text, double.parse(amountController.text));
                print(titleController.text);
                print(amountController.text);
              },
              child: Text('Save Transaction'),
              textColor: Colors.indigo,
            )
          ],
        ),
      ),
    );
  }
}
