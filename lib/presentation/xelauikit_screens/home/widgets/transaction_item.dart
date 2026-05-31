import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  final String title;
  final String date;
  final String amount;
  final Color amountColor;
  final Widget leadingIcon;

  const TransactionItem({
    super.key,
    required this.title,
    required this.date,
    required this.amount,
    required this.amountColor,
    required this.leadingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      height: 63,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                leadingIcon,
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF242424))),
                    Text(date, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color(0xFF707070)))
                  ],
                ),
              ],
            ),
            Text(amount, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: amountColor)),
          ],
        ),
      ),
    );
  }
}