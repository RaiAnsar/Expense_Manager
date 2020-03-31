import 'package:expense_manager/Widgets/user_transaction.dart';
import 'package:flutter/material.dart';
import './Widgets/new_transaction.dart';
import './Widgets/transaction_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Manager Flutter',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Manager'),
      ),
      body: Column(
        children: <Widget>[
UserTransaction()
        ],
      ),
    );
  }
}
