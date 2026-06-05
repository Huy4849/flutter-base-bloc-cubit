import 'package:flutter/material.dart';
import 'budget_static.dart';

class BudgetStaticSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> fakeBudgetData = [
      {
        'title': 'Monthly budget',
        'spent': '580',
        'total': '/ \$820',
        'progress': 0.25,
        'percent': '25%',
        'daily': 'Daily budget was - (\$26.45 - 45.33), ',
        'dailySave': 'Saved\$340',
      }
    ];

    final budget = fakeBudgetData[0];

    return Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: BudgetStatic(
            budgetTitle: budget['title'] as String,
            budgetSpent: budget['spent'] as String,
            budgetTotal: budget['total'] as String,
            budgetProgress: budget['progress'] as double,
            budgetPercent: budget['percent'] as String,
            budgetDaily: budget['daily'] as String,
            budgetSave: budget['dailySave'] as String));
  }
}
