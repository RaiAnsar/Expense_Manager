import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTransaction;

  NewTransaction(this.addTransaction);

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  triggerTransaction() {
    final titleData = titleController.text;
    final amountData = double.parse(amountController.text);

    if (titleData == null || amountData <= 0) {
      return;
    }

    addTransaction(titleData, amountData);
  }

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
              style: TextStyle(
                fontSize: 15,
              ),
              decoration: InputDecoration(labelText: " Title"),
              controller: titleController,
              keyboardType: TextInputType.text, //TODO: redudandant
              onSubmitted: (_) {
                triggerTransaction();
              },
              // onChanged: (tValue) => titleText = tValue,
            ),
            TextField(
              style: TextStyle(fontSize: 15),
              decoration: InputDecoration(labelText: " Amount"),
              controller: amountController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onSubmitted: (_) {
                triggerTransaction();
              },
              // onChanged: (aValue) => amountText = aValue,
            ),
            FlatButton(
              onPressed: () {
                triggerTransaction();
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
