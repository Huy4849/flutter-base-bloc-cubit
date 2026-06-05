import 'package:flutter/material.dart';

class BudgetStatic extends StatelessWidget {
  final String budgetTitle;
  final String budgetSpent;
  final String budgetTotal;
  final double budgetProgress;
  final String budgetPercent;
  final String budgetDaily;
  final String budgetSave;

  const BudgetStatic({
    super.key,
    required this.budgetTitle,
    required this.budgetSpent,
    required this.budgetTotal,
    required this.budgetProgress,
    required this.budgetPercent,
    required this.budgetDaily,
    required this.budgetSave,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          budgetTitle,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF242424)),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          width: double.infinity,
          height: 72,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(9)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: budgetSpent,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF2836B5)),
                          ),
                          WidgetSpan(
                            child: Transform.translate(
                              offset: const Offset(0, 2),
                              child: Text(
                                budgetTotal,
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
                SizedBox(
                  height: 8,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(2),
                  child: SizedBox(
                    height: 4,
                    child: LinearProgressIndicator(
                        borderRadius: BorderRadius.circular(2),
                        value: budgetProgress,
                        backgroundColor: const Color(0xFFCCB57A),
                        valueColor:
                        AlwaysStoppedAnimation(Color(0xFF8557A0))),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 11,
                      color: Color(0xFF707070),
                      fontFamily: 'Inter',
                    ),
                    children: [
                      TextSpan(
                        text: budgetDaily,
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      TextSpan(
                        text: budgetSave,
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
