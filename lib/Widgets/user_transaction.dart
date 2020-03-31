import '../Widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'new_transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transactoin> _userTransactions = [
    Transactoin(id: '01', title: 'Dahi', amount: 69.69, date: DateTime.now()),
    Transactoin(id: '02', title: 'Pyaz', amount: 40.44, date: DateTime.now()),
  ];

  void _addTransaction(String tranTitle, double tranAmount) {
    final newTransaction = Transactoin(
        title: tranTitle,
        amount: tranAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      _userTransactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
