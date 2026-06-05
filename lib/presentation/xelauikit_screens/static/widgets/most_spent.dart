import 'package:flutter/material.dart';

class MostSpent extends StatelessWidget {
  final Color categoryColor;
  final double categoryProcess;
  final Color categoryProcessColor;
  final Widget leadingIcon;
  final String categoryTitle;
  final String percentage;
  final String amount;

  const MostSpent({
    super.key,
    required this.categoryColor,
    required this.categoryProcess,
    required this.categoryProcessColor,
    required this.leadingIcon,
    required this.categoryTitle,
    required this.percentage,
    required this.amount,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      width: double.infinity,
      height: 62,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: categoryProcess,
            decoration: BoxDecoration(
                color: categoryProcessColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  topLeft: Radius.circular(8),
                )),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 8,
                  decoration: BoxDecoration(
                      color: categoryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        topLeft: Radius.circular(8),
                      )),
                ),
                SizedBox(
                  width: 5,
                ),
                leadingIcon,
                SizedBox(
                  width: 14,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        categoryTitle,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF242424)),
                      ),
                      Text(
                        percentage,
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF707070)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Text(
              amount,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xFFE25C5C)),
            ),
          ),
        ],
      ),
    );
  }
}
