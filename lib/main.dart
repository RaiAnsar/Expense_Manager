import 'package:expense_manager/transaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transactoin> transactions = [
    Transactoin(id: 01, title: 'Dahi', amount: 69.69, date: DateTime.now()),
    Transactoin(id: 02, title: 'Pyaz', amount: 40, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(children: <Widget>[
        Card(
          child: Text(
            'Widget Playground!',
            style: TextStyle(fontSize: 50),
          ),
        ),
        Card(
          child: Text('Henlo G'),
        )
      ]),
    );
  }
}
