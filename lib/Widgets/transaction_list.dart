import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatefulWidget {

  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {

  final List<Transactoin> transactions = [
    Transactoin(id: 01, title: 'Dahi', amount: 69.69, date: DateTime.now()),
    Transactoin(id: 02, title: 'Pyaz', amount: 40.44, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
              children: transactions.map(
                (tx) {
                  return Card(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(
                            '\$${tx.amount}',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple),
                          ),
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.purple, width: 3),
                          ),
                          padding: EdgeInsets.all(10),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              tx.title,
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline),
                            ),
                            Text(DateFormat.yMMMEd().format(tx.date),
                                style: TextStyle(
                                  color: Colors.grey,
                                ))
                          ],
                        )
                      ],
                    ),
                  );
                },
              ).toList(), //# Bro I'm lonely here
            );
  }
}