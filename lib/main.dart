import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uptil_expense1/data/expense_data.dart';
import 'package:uptil_expense1/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create:(context)=>ExpenseData(),
    builder: (context, child) => MaterialApp(
      home: HomePage(),
    ),



      
    );
  }
}
