import 'package:flutter/material.dart';
import 'most_spent.dart';

class MostSpentSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> fakeMostSpentData = [
      {
        'process1': 45,
        'process2': 25,
        'process3': 35,
        'categoryColor': const Color(0xFF7365FA),
        'categoryProcess': 168.0,
        'categoryProcessColor': const Color(0xFFf8f7fe),
        'indexIcon': 1,
        'categoryTitle': 'House',
        'percentTage': '45%',
        'amount': '-\$232.00'
      },
      {
        'process1': 45,
        'process2': 25,
        'process3': 35,
        'categoryColor': const Color(0xFF5cbfc5),
        'categoryProcess': 135.0,
        'categoryProcessColor': const Color(0xFFf7fcfc),
        'indexIcon': 2,
        'categoryTitle': 'Car',
        'percentTage': '20%',
        'amount': '-\$170.00'
      },
    ];

    return Padding(
      padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Most of money goes to',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Color(0xFF242424)),
          ),
          const SizedBox(
            height: 8,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(2),
            child: SizedBox(
              height: 4,
              child: Row(
                children: [
                  Expanded(
                    flex: fakeMostSpentData[0]['process1'] as int,
                    child: Container(
                      color: Color(0xFF7365FA),
                    ),
                  ),
                  Expanded(
                    flex: fakeMostSpentData[0]['process2'] as int,
                    child: Container(
                      color: Color(0xFF5CBFC5),
                    ),
                  ),
                  Expanded(
                    flex: fakeMostSpentData[0]['process3'] as int,
                    child: Container(
                      color: Color(0xFFFCAA18),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          ...fakeMostSpentData.map((item) {
            Widget iconWidget;
            if (item['indexIcon'] == 1) {
              iconWidget = Image.asset(
                'assets/images/icon-11.png',
                width: 35,
                height: 35,
              );
            } else {
              iconWidget = Image.asset(
                'assets/images/icon-12.png',
                width: 35,
                height: 35,
              );
            }

            return MostSpent(
                categoryColor: item['categoryColor'] as Color,
                categoryProcess: item['categoryProcess'] as double,
                categoryProcessColor: item['categoryProcessColor'] as Color,
                leadingIcon: iconWidget,
                categoryTitle: item['categoryTitle'].toString(),
                percentage: item['percentTage'].toString(),
                amount: item['amount'].toString());
          }).toList(),
        ],
      ),
    );
  }
}
