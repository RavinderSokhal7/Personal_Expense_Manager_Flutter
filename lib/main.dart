import 'package:flutter/material.dart';
import 'package:personal_expense_manager/transactionListItem.dart';
import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Expense Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Personal Expense Manager'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'Shoes',
      amount: 2499,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Groceries',
      amount: 350,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Grocies',
      amount: 350,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Gr',
      amount: 350,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      title: 'Bat',
      amount: 350,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Divider(),
            Container(
              width: double.infinity,
              child: Card(
                child: Center(child: Text('Chart !')),
                elevation: 5,
                clipBehavior: Clip.antiAlias,
                color: Colors.green[200],
              ),
            ),
            Divider(),
            Container(
              width: double.infinity,
              child: Card(
                child: Column(
                  children:
                  transactions.map((tx){
                    return Column(
                      children: <Widget>[
                        TransactionListItem(tx),
                        Divider(),
                      ],
                    );
                  }).toList(),
                ),
                elevation: 5,
                clipBehavior: Clip.hardEdge,
                color: Colors.green[200],
              ),
            ),
            Divider(),
          ],
        ),
    );
  }
}
