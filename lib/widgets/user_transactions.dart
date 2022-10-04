import 'package:flutter/material.dart';

import 'package:persoal_expenses/widgets/new_transaction.dart';
import 'package:persoal_expenses/widgets/transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransaction = [
    // Transaction(
    //     id: 'r1', title: 'New Shoes', amount: 50.65, date: DateTime.now()),
    // Transaction(
    //     id: 'r2', title: 'NewClothes', amount: 43.65, date: DateTime.now()),
  ];
  void _addUserTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txTitle,
        amount: txAmount,
        date: DateTime.now());
    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // NewTransaction(_addUserTransaction),
        // TransactionList(_userTransaction),
      ],
    );
  }
}
