import 'package:expenses_app/models/expense.dart';
import 'package:expenses_app/widgets/expanses_list/expanses_list.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpense = [
    Expense(
        category: Category.work,
        title: 'Flutter Course',
        amount: 29.9,
        date: DateTime.now()),
    Expense(
        category: Category.leisure,
        title: 'Flutter Course',
        amount: 29.9,
        date: DateTime.now()),
    Expense(
        category: Category.work,
        title: 'Flutter Course',
        amount: 29.9,
        date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter'),
        actions: [
          IconButton(
             onPressed: () {
              showModalBottomSheet(
                context: context,
                 builder: (BuildContext context){
                  return SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: const Text('data'));
                 }
                 );
             },
              icon: const Icon(Icons.add),),
        ],
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('.....'),
          Expanded(
            child: ExpensesList(expenses: _registeredExpense),
          ),
        ],
      )),
    );
  }
}


