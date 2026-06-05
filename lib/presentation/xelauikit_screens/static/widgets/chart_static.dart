import 'package:flutter/material.dart';

class ChartStatic extends StatelessWidget {
  final Color amountColor;
  final String title;
  final String amount;
  final Color border;
  final Color backGroundColor;

  const ChartStatic({
    super.key,
    required this.amountColor,
    required this.title,
    required this.amount,
    required this.border,
    required this.backGroundColor,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 9,
              height: 9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: backGroundColor,
                  border: Border.all(
                    color: border,
                    width: 1,
                  )),
            ),
            SizedBox(width: 8,),
            Text(
              title,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF242424)),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              amount,
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: amountColor),
            ),
            Text(
              '.00',
              style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF838486)),
            ),
            SizedBox(width: 7.5,)
          ],
        )
      ],
    );
  }
}
