import 'package:uuid/uuid.dart';

enum ExpenseType {
  food,
  travel,
  leisure,
  work,
}

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
}