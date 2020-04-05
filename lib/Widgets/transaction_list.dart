import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  TransactionList(this._userTransactions);

  final List _userTransactions;

  @override
  Widget build(BuildContext context) {
    return Container(
        height:MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemBuilder: (context, index) {

            return Card(
              //    elevation: 10,
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      '\$${_userTransactions[index].amount.toStringAsFixed(2)}', //Imp
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColorDark),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Theme.of(context).primaryColorLight, width: 3),
                    ),
                    padding: EdgeInsets.all(10),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        _userTransactions[index].title,
                        style: TextStyle(
                            color: Theme.of(context).accentColor,
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
