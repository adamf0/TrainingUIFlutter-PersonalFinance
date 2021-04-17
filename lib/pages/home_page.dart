import 'package:flutter/material.dart';
import '../custom/header.dart';
import '../custom/transaction_card.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    double _height = .20; //aslinya: .55

    void _addTransaction() {
      setState(() {
        _height = .08;
      });
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        leading:
            IconButton(icon: const Icon(Icons.short_text), onPressed: () {}),
        centerTitle: true,
        title: const Text(
          'Personal Finance',
          style: TextStyle(
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.person_outline), onPressed: () {})
        ],
      ),
      body: Stack(
        children: <Widget>[Header(_addTransaction), TransactionCard(_height)],
      ),
    );
  }
}
