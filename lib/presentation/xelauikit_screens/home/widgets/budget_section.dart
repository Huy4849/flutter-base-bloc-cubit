import 'package:flutter/material.dart';

import 'budget_card.dart';

class BudgetSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> fakeBudgetData = [
      {
        'title': 'January budget',
        'spent': '480',
        'total': '820',
        'progress': 0.64, // Tương đương thanh tiến trình chạy được 64%
        'percent': '64%',
        'daily': 'Daily budget - (\$26.45 - 45.33)',
        'daysLeft': '19 days left',
      }
    ];

    final budget = fakeBudgetData[0];

    return Positioned(
      top: 113,
      left: 16,
      right: 16,
      child: BudgetCard(
        budgetTitle: budget['title'] as String,
        budgetSpent: budget['spent'] as String,
        budgetTotal: budget['total'] as String,
        budgetProgress: budget['progress'] as double,
        budgetPercent: budget['percent'] as String,
        budgetDaily: budget['daily'] as String,
        budgetDaysLeft: budget['daysLeft'] as String,
      ),
    );
  }
}