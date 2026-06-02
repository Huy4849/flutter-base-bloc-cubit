import 'package:flutter/material.dart';

class BudgetCard extends StatelessWidget {
  final String budgetTitle;
  final String budgetSpent;
  final String budgetTotal;
  final double budgetProgress;
  final String budgetPercent;
  final String budgetDaily;
  final String budgetDaysLeft;

  const BudgetCard({
    super.key,
    required this.budgetTitle,
    required this.budgetSpent,
    required this.budgetTotal,
    required this.budgetProgress,
    required this.budgetPercent,
    required this.budgetDaily,
    required this.budgetDaysLeft,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358,
      height: 97,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              budgetTitle,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF242424)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '\$ $budgetSpent',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF2836B5)),
                      ),
                      WidgetSpan(
                        child: Transform.translate(
                          offset: const Offset(0, 2),
                          child: Text(
                            '/ \$ $budgetTotal',
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF838486)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  budgetPercent,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                      color: Color(0xFF707070)),
                )
              ],
            ),
            const SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(2),
              child: SizedBox(
                height: 4,
                child: LinearProgressIndicator(
                  borderRadius: BorderRadius.circular(2),
                  value: budgetProgress,
                  backgroundColor: const Color(0xFFF3F3F3),
                  valueColor:
                      const AlwaysStoppedAnimation<Color>(Color(0xFF8557A0)),
                ),
              ),
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  budgetDaily,
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF707070)),
                ),
                Text(
                  budgetDaysLeft,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                      color: Color(0xFF707070)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
