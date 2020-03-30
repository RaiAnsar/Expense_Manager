import 'package:flutter/foundation.dart';

class Transactoin {
  final int id;
  final String title;
  final double amount;
  final DateTime date;

  Transactoin({
    @required this.id,
    @required this.title,
    @required this.amount,
    @required this.date,
  });
}
