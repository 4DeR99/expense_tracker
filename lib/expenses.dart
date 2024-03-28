import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list.dart';

final List<Expense> expenses = [
  Expense(
    title: 'Food',
    amount: 20.00,
    date: DateTime.now(),
    type: ExpenseType.food,
  ),
  Expense(
    title: 'Travel',
    amount: 40.00,
    date: DateTime.now(),
    type: ExpenseType.travel,
  ),
  Expense(
    title: 'Leisure',
    amount: 60.00,
    date: DateTime.now(),
    type: ExpenseType.leisure,
  ),
  Expense(
    title: 'Work',
    amount: 80.00,
    date: DateTime.now(),
    type: ExpenseType.work,
  ),
];

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense tracker'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          //chart
          const Text("Chart"),
          //list of expenses
          Expanded(
            child: ExpensesList(
              expenses: expenses,
            ),
          ),
        ],
      ),
    );
  }
}
