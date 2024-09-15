import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();
final dateFormat = DateFormat.yMd();

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food : Icons.lunch_dining,
  Category.leisure : Icons.label_important_outline,
  Category.travel : Icons.travel_explore,
  Category.work : Icons.work,
};

class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String formattedDate(){
    return dateFormat.format(date);
  }

  Expense(
      {required this.category,
      required this.title,
      required this.amount,
      required this.date})
      : id = uuid.v4();
}

var v1 = Expense(
    category: Category.work,
    title: 'Flutter Course',
    amount: 29.9,
    date: DateTime.now());
