import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//text controllers

  final newExpenseNameController = TextEditingController();
  final newExpenseAmountController = TextEditingController();

//add new Expense
  void addNewExpense() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Add New Expense'),
              content: Column(mainAxisSize: MainAxisSize.min, children: [
                //expense name
                TextField(
                  controller: newExpenseAmountController,
                ),

                //expense amount

                TextField(
                  controller: newExpenseAmountController,
                )
              ]),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: addNewExpense,
        child: const Icon(Icons.add),
      ),
    );
  }
}
