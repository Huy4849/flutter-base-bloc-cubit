import 'package:fl_chart/fl_chart.dart';

class ChartLogic {
  final Map<int, List<FlSpot>> _incomeMonthsData = {
    1: const [
      FlSpot(0, 6000),
      FlSpot(1, 18000),
      FlSpot(2, 9000),
      FlSpot(3, 22000),
      FlSpot(4, 16000),
      FlSpot(5, 18500),
      FlSpot(6, 9000),
      FlSpot(7, 18500)
    ],
    2: const [
      FlSpot(0, 5000),
      FlSpot(1, 12000),
      FlSpot(2, 18000),
      FlSpot(3, 8000),
      FlSpot(4, 22000),
      FlSpot(5, 14000),
      FlSpot(6, 19000),
      FlSpot(7, 15000)
    ],
    3: const [
      FlSpot(0, 2000),
      FlSpot(1, 9000),
      FlSpot(2, 5000),
      FlSpot(3, 16000),
      FlSpot(4, 11000),
      FlSpot(5, 21000),
      FlSpot(6, 13000),
      FlSpot(7, 18000)
    ],
    4: const [
      FlSpot(0, 6000),
      FlSpot(1, 18000),
      FlSpot(2, 12000),
      FlSpot(3, 25000),
      FlSpot(4, 15000),
      FlSpot(5, 20000),
      FlSpot(6, 14000),
      FlSpot(7, 22000)
    ],
    5: const [
      FlSpot(0, 4000),
      FlSpot(1, 11000),
      FlSpot(2, 15000),
      FlSpot(3, 10000),
      FlSpot(4, 19000),
      FlSpot(5, 13000),
      FlSpot(6, 17000),
      FlSpot(7, 16000)
    ],
    6: const [
      FlSpot(0, 4000),
      FlSpot(1, 15000),
      FlSpot(2, 9000),
      FlSpot(3, 24000),
      FlSpot(4, 14000),
      FlSpot(5, 18500),
      FlSpot(6, 11000),
      FlSpot(7, 20000)
    ],
    7: const [
      FlSpot(0, 5000),
      FlSpot(1, 13000),
      FlSpot(2, 8000),
      FlSpot(3, 21000),
      FlSpot(4, 12000),
      FlSpot(5, 19000),
      FlSpot(6, 15000),
      FlSpot(7, 17000)
    ],
    8: const [
      FlSpot(0, 4000),
      FlSpot(1, 16000),
      FlSpot(2, 11000),
      FlSpot(3, 23000),
      FlSpot(4, 14000),
      FlSpot(5, 18000),
      FlSpot(6, 12000),
      FlSpot(7, 21000)
    ],
    9: const [
      FlSpot(0, 3000),
      FlSpot(1, 10000),
      FlSpot(2, 14000),
      FlSpot(3, 9000),
      FlSpot(4, 17000),
      FlSpot(5, 11000),
      FlSpot(6, 16000),
      FlSpot(7, 13000)
    ],
    10: const [
      FlSpot(0, 2000),
      FlSpot(1, 12000),
      FlSpot(2, 7000),
      FlSpot(3, 19000),
      FlSpot(4, 13000),
      FlSpot(5, 22000),
      FlSpot(6, 15000),
      FlSpot(7, 18000)
    ],
    11: const [
      FlSpot(0, 5000),
      FlSpot(1, 14000),
      FlSpot(2, 11000),
      FlSpot(3, 24000),
      FlSpot(4, 16000),
      FlSpot(5, 20000),
      FlSpot(6, 13000),
      FlSpot(7, 22000)
    ],
    12: const [
      FlSpot(0, 6000),
      FlSpot(1, 17000),
      FlSpot(2, 13000),
      FlSpot(3, 26000),
      FlSpot(4, 18000),
      FlSpot(5, 23000),
      FlSpot(6, 15000),
      FlSpot(7, 25000)
    ],
  };

  final Map<int, List<FlSpot>> _outcomeMonthsData = {
    1: const [
      FlSpot(0, 3000),
      FlSpot(2, 18000),
      FlSpot(3.2, 13000),
      FlSpot(4, 21000),
      FlSpot(5.2, 8000),
      FlSpot(7, 22000)
    ],
    2: const [
      FlSpot(0, 5000),
      FlSpot(1, 12000),
      FlSpot(2, 18000),
      FlSpot(3, 8000),
      FlSpot(4, 22000),
      FlSpot(5, 14000),
      FlSpot(6, 19000),
      FlSpot(7, 15000)
    ],
    3: const [
      FlSpot(0, 2000),
      FlSpot(1, 9000),
      FlSpot(2, 5000),
      FlSpot(3, 16000),
      FlSpot(4, 11000),
      FlSpot(5, 21000),
      FlSpot(6, 13000),
      FlSpot(7, 18000)
    ],
    4: const [
      FlSpot(0, 6000),
      FlSpot(1, 18000),
      FlSpot(2, 12000),
      FlSpot(3, 25000),
      FlSpot(4, 15000),
      FlSpot(5, 20000),
      FlSpot(6, 14000),
      FlSpot(7, 22000)
    ],
    5: const [
      FlSpot(0, 4000),
      FlSpot(1, 11000),
      FlSpot(2, 15000),
      FlSpot(3, 10000),
      FlSpot(4, 19000),
      FlSpot(5, 13000),
      FlSpot(6, 17000),
      FlSpot(7, 16000)
    ],
    6: const [
      FlSpot(0, 4000),
      FlSpot(1, 15000),
      FlSpot(2, 9000),
      FlSpot(3, 24000),
      FlSpot(4, 14000),
      FlSpot(5, 18500),
      FlSpot(6, 11000),
      FlSpot(7, 20000)
    ],
    7: const [
      FlSpot(0, 5000),
      FlSpot(1, 13000),
      FlSpot(2, 8000),
      FlSpot(3, 21000),
      FlSpot(4, 12000),
      FlSpot(5, 19000),
      FlSpot(6, 15000),
      FlSpot(7, 17000)
    ],
    8: const [
      FlSpot(0, 4000),
      FlSpot(1, 16000),
      FlSpot(2, 11000),
      FlSpot(3, 23000),
      FlSpot(4, 14000),
      FlSpot(5, 18000),
      FlSpot(6, 12000),
      FlSpot(7, 21000)
    ],
    9: const [
      FlSpot(0, 3000),
      FlSpot(1, 10000),
      FlSpot(2, 14000),
      FlSpot(3, 9000),
      FlSpot(4, 17000),
      FlSpot(5, 11000),
      FlSpot(6, 16000),
      FlSpot(7, 13000)
    ],
    10: const [
      FlSpot(0, 2000),
      FlSpot(1, 12000),
      FlSpot(2, 7000),
      FlSpot(3, 19000),
      FlSpot(4, 13000),
      FlSpot(5, 22000),
      FlSpot(6, 15000),
      FlSpot(7, 18000)
    ],
    11: const [
      FlSpot(0, 5000),
      FlSpot(1, 14000),
      FlSpot(2, 11000),
      FlSpot(3, 24000),
      FlSpot(4, 16000),
      FlSpot(5, 20000),
      FlSpot(6, 13000),
      FlSpot(7, 22000)
    ],
    12: const [
      FlSpot(0, 6000),
      FlSpot(1, 17000),
      FlSpot(2, 13000),
      FlSpot(3, 26000),
      FlSpot(4, 18000),
      FlSpot(5, 23000),
      FlSpot(6, 15000),
      FlSpot(7, 25000)
    ],
  };

  List<FlSpot> getIncomeSpots(DateTime selectedMonth) {
    return _incomeMonthsData[selectedMonth.month] ?? _incomeMonthsData[1]!;
  }

  List<FlSpot> getOutcomeSpots(DateTime selectedMonth) {
    return _outcomeMonthsData[selectedMonth.month] ?? _outcomeMonthsData[1]!;
  }
}
