import 'package:flutter/material.dart';

class Transaction {
  int id;
  String title;
  double value;
  String category;
  IconData iconData;
  Color color;

  Transaction(
      {@required this.id,
      @required this.title,
      @required this.value,
      @required this.category,
      @required this.iconData,
      @required this.color});
}

class Transactions with ChangeNotifier {
  List<Transaction> transactions = [
    Transaction(
        id: 1,
        title: 'Dinner',
        value: 128.67,
        category: 'Meals',
        iconData: Icons.fastfood,
        color: Color(0xffe8505b)),
    Transaction(
        id: 2,
        title: 'Birthday present',
        value: 49.99,
        category: 'Gift',
        iconData: Icons.card_giftcard,
        color: Color(0xfffe91ca)),
    Transaction(
        id: 3,
        title: 'PC game',
        value: 27.35,
        category: 'Gaming',
        iconData: Icons.gamepad,
        color: Color(0xfff6d743)),
    Transaction(
        id: 4,
        title: 'Software',
        value: 149.99,
        category: 'Business',
        iconData: Icons.casino,
        color: Color(0xff40bad5)),
    Transaction(
        id: 5,
        title: 'Breakfast',
        value: 15.00,
        category: 'Meals',
        iconData: Icons.fastfood,
        color: Color(0xffe8505b)),
  ];
}
