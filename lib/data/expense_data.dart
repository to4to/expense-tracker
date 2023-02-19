import 'package:uptil_expense1/dateTime/date_time_helper.dart';

import '../models/expense_items.dart';

class ExpenseData {
  //list of All Expenses

  List<ExpenseItem> overAllExpenseList = [];

  //method to get expense list

  List<ExpenseItem> getAllExpenseList() {
    return overAllExpenseList;
  }

  //ability to add new expense

  void addNewExpense(ExpenseItem newExpense) {
    overAllExpenseList.add(newExpense);
  }

//ability to delete an expense

  void deleteExpense(ExpenseItem expense) {
    overAllExpenseList.remove(expense);
  }

//get weekday (mon,tue, etc ) from a dateTime object
  String getDayName(DateTime dateTime) {
    switch (dateTime.weekday) {
      case 1:
        return 'Mon';
        break;
      case 2:
        return 'Tue';
        break;
      case 3:
        return 'Wed';
        break;
      case 4:
        return 'Thur';
        break;
      case 5:
        return 'Fri';
        break;
      case 6:
        return 'Sat';
        break;
      case 7:
        return 'Sun';
        break;
      default:
        return '';
    }
  }

//get date for start of the week(sunday)

  DateTime? startOfWeekDate() {
    DateTime? startOfWeek;

    //get Today Date
    DateTime today = DateTime.now();

//go back by today to find sunday

    for (int i = 0; i < 7; i++) {
      if (getDayName(today.subtract(Duration(days: i))) == 'Sun') {
        startOfWeek = today.subtract(Duration(days: i));
      }
    }

    return startOfWeek;
  }

/*  
convert overall list of  expense into a daily expense summary 

e.g. 
overAllExpenseList=[
]

dailyExpenseSummary=[];

 */

  Map<String, double> calcuateDailyExpenseSummary() {
    Map<String, double> dailyExpenseSummary = {
//date(yyyymmdd):amountTotalForDay
    };

    for (var expense in overAllExpenseList) {
      String date = convertDateTimeToString(expense.dateTime);
      double amount = double.parse(expense.amount);

      if (dailyExpenseSummary.containsKey(date)) {
        double currentAmount = dailyExpenseSummary[date]!;
        currentAmount += amount;
        dailyExpenseSummary[date] = currentAmount;
      } else {
        dailyExpenseSummary.addAll({date: amount});
      }
    }

    return dailyExpenseSummary;
  }
}
