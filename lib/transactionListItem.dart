import 'package:flutter/material.dart';
import './transaction.dart';

class TransactionListItem extends StatelessWidget {
  final Transaction tx;
  TransactionListItem(this.tx);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.yellow[200],
      child: ListTile(
        contentPadding: EdgeInsets.all(8.0),
        isThreeLine: true,
        leading: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            color: Colors.green[600],
          ),
          //margin: EdgeInsets.all(4.0),
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Rs. ' + tx.amount.toString(),
          ),
        ),
        title: Text(
          tx.title,
        ),
        subtitle: Text(
          tx.date.toString(),
        ),
        onTap: null,
      ),
    );
  }
}
