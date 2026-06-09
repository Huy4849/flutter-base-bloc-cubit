import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'chart_static.dart';

class ChartSection extends StatelessWidget {
  final List<FlSpot> spotsIncome;
  final List<FlSpot> spotsOutcome;

  const ChartSection({
    super.key,
    required this.spotsIncome,
    required this.spotsOutcome,
  });

  List<FlSpot> _convertToVirtualSpots(List<FlSpot> originalSpots) {
    return originalSpots.map((spot) {
      double virtualY;

      if (spot.y <= 5000) {
        virtualY = spot.y/5000;
      } else if (spot.y <= 15000) {
        virtualY = 1.0 + (spot.y - 5000) / 10000;
      } else if (spot.y <= 20000) {
        virtualY = 2.0 + (spot.y - 15000) / 5000;
      } else {
        virtualY = 3.0 + (spot.y - 20000) / 5000;
      }
      return FlSpot(spot.x, virtualY);
    }).toList();
  }

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
        'amount': '\$ 23,500',
        'border': const Color(0xFF893547),
        'backGroundColor': const Color(0xFFDEBDC5),
      },
      {
        'amountColor': const Color(0xFFCCB57A),
        'title': 'Savings',
        'amount': '\$ 9,100',
        'border': const Color(0xFFCCB57A),
        'backGroundColor': const Color(0xFFF0E0B7),
      }
    ];

    final List<FlSpot> finalIncomeSpots = _convertToVirtualSpots(spotsIncome);
    final List<FlSpot> finalOutcomeSpots = _convertToVirtualSpots(spotsOutcome);

    double minX = spotsIncome.isNotEmpty ? spotsIncome.first.x : 0;
    double maxX = spotsIncome.isNotEmpty ? spotsIncome.last.x : 7;
    if (spotsIncome.isNotEmpty) {
      minX = minX;
      maxX = maxX;
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Container(
        width: double.infinity,
        height: 223,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(9),
        ),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
                child: LineChart(
                  LineChartData(
                    lineTouchData: const LineTouchData(enabled: true),
                    clipData: const FlClipData.all(),

                    gridData: FlGridData(
                      show: true,
                      drawVerticalLine: false,
                      checkToShowHorizontalLine: (value) => value == 1 || value == 2 || value == 3 || value == 4,
                      getDrawingHorizontalLine: (value) {
                        return FlLine(
                          color: const Color(0xFFE5E5E5).withValues(alpha: 0.6),
                          strokeWidth: 0.8,
                        );
                      },
                    ),

                    titlesData: FlTitlesData(
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(

                          showTitles: true,
                          reservedSize: 28,
                          interval: 1,
                          getTitlesWidget: (value, meta) {
                            String text = '';
                            if (value == 1) text = '5k';
                            if (value == 2) text = '15k';
                            if (value == 3) text = '20k';
                            if (value == 4) text = '25k';

                            if (text.isEmpty) return const SizedBox();

                            return SideTitleWidget(
                              meta: meta,
                              space: 4,
                              child: Container(
                                margin: const EdgeInsets.only(top: 20),
                                child: Text(
                                  text,
                                  style: const TextStyle(
                                    color: Color(0xFF9AA0A6),
                                    fontSize: 11,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      bottomTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    ),

                    borderData: FlBorderData(show: false),

                    minX: minX,
                    maxX: maxX,

                    minY: 0,
                    maxY: 4.2,

                    lineBarsData: [
                      LineChartBarData(
                        spots: finalIncomeSpots,
                        isCurved: true,
                        curveSmoothness: 0.55,
                        color: const Color(0xFF619CA4),
                        barWidth: 2.0,
                        dotData: const FlDotData(show: false),
                        belowBarData: BarAreaData(
                          show: true,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color(0xFF619CA4).withValues(alpha: 0.15),
                              const Color(0xFF619CA4).withValues(alpha: 0.0),
                            ],
                          ),
                        ),
                      ),
                      LineChartBarData(
                        spots: finalOutcomeSpots,
                        isCurved: true,
                        curveSmoothness: 0.55,
                        color: const Color(0xFF893547),
                        barWidth: 2.0,
                        dotData: const FlDotData(show: false),
                        belowBarData: BarAreaData(
                          show: true,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color(0xFF893547).withValues(alpha: 0.1),
                              const Color(0xFF893547).withValues(alpha: 0.0),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12, top: 8),
              child: SizedBox(
                height: 51,
                child: Row(
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
                        if (index < fakeChartData.length - 1) ...[
                          const SizedBox(
                            height: double.infinity,
                            child: VerticalDivider(
                              color: Color(0xFFE5E5E5),
                              thickness: 1,
                            ),
                          ),
                          const SizedBox(width: 7.5),
                        ]
                      ];
                    })
                        .expand((element) => element)
                        .toList(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}