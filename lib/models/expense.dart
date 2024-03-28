import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat('dd/MM/yyyy');

enum ExpenseType {
  food,
  travel,
  leisure,
  work,
}

const icons = {
  ExpenseType.food: Icons.lunch_dining,
  ExpenseType.travel: Icons.flight,
  ExpenseType.leisure: Icons.movie,
  ExpenseType.work: Icons.work,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.type,
  }) : id = const Uuid().v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final ExpenseType type;

  String get formattedDate => formatter.format(date);
}
