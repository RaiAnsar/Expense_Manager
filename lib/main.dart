import 'package:flutter/material.dart';
import './widgets/new_transaction.dart';
import 'widgets/transaction_list.dart';
import 'models/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Manager Flutter',
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.red, accentColor: Colors.teal, appBarTheme: AppBarTheme(color: Colors.lime)),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

_startNewTransaction(BuildContext ctx) {
  showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return NewTransaction(_addTransaction);
      });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _startNewTransaction(context),
          )
        ],
        title: Text('Expense Manager'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _startNewTransaction(context), //_startNewTransaction(context),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[        //NewTransaction(_addTransaction),
        TransactionList(_userTransactions),
        ],
        ),
      ),
    );
  }
}
