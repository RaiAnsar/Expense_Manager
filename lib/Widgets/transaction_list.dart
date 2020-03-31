import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  TransactionList(this._userTransactions);

  final List _userTransactions;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        child: ListView.builder(
          itemBuilder: (context, index) {

            return Card(
              //    elevation: 10,
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      '\$${_userTransactions[index].amount}',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple, width: 3),
                    ),
                    padding: EdgeInsets.all(10),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        _userTransactions[index].title,
                        style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline),
                      ),
                      Text(
                          DateFormat.yMMMEd()
                              .format(_userTransactions[index].date),
                          style: TextStyle(
                            color: Colors.grey,
                          ))
                    ],
                  )
                ],
              ),
            );
          },
          itemCount: _userTransactions.length,
        ) //.toList(), //# Bro I'm lonely here
        );
    //);
  }
}
