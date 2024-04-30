import 'package:flutter/cupertino.dart';
import 'package:section5/widgets/expenses.dart';

class ExpenseItem extends StatelessWidget{
  const ExpenseItem(this.expense, {super.key});

  final Expenses expense;

  @override
  Widget build(BuildContext context){
    return Card(child: Text(expense.title),);
  }

}