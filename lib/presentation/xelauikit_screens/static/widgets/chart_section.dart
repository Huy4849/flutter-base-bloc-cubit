import 'package:flutter/material.dart';
import 'chart_static.dart';

class ChartSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> fakeChartData = [
      {
        'amountColor': const Color(0xFF619CA4),
        'title': 'Income',
        'amount': '\$ 22,600',
        'border': const Color(0xFF619CA4),
        'backGroundColor': const Color(0xFFCEE2E8),
      },
      {
        'amountColor': const Color(0xFF893547),
        'title': 'Outcome',
        'amount': '\$ 12,400',
        'border': const Color(0xFF893547),
        'backGroundColor': const Color(0xFFDEBDC5),
      },
      {
        'amountColor': const Color(0xFFCCB57A),
        'title': 'Savings',
        'amount': '\$ 4,200',
        'border': const Color(0xFFCCB57A),
        'backGroundColor': const Color(0xFFF0E0B7),
      }
    ];

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Container(
        width: double.infinity,
        height: 223,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(9)),
        child: Column(
          children: [
            Image.asset('assets/images/chart.png'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...fakeChartData
                    .asMap()
                    .entries
                    .map((entry) {
                      int index = entry.key;
                      var item = entry.value;

                      return [
                        ChartStatic(
                          amountColor: item['amountColor'] as Color,
                          title: item['title'] as String,
                          amount: item['amount'] as String,
                          border: item['border'] as Color,
                          backGroundColor: item['backGroundColor'] as Color,
                        ),
                        if (index < fakeChartData.length - 1)
                          SizedBox(
                            height: 51,
                            child: VerticalDivider(
                              color: const Color(0xFFE5E5E5),
                              thickness: 1,
                            ),
                          ),
                        SizedBox(
                          width: 7.5,
                        )
                      ];
                    })
                    .expand((element) => element)
                    .toList(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
