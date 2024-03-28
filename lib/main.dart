import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: ExpenseTracker(),
  ));
}

class ExpenseTracker extends StatelessWidget {
  const ExpenseTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker'),
      ),
      body: const Center(
        child: Text('Hello, World!'),
      ),
    );
  }
}