import 'package:bnv_opendata/presentation/xelauikit_screens/static/widgets/budget_static-section.dart';
import 'package:bnv_opendata/presentation/xelauikit_screens/static/widgets/chart_section.dart';
import 'package:bnv_opendata/presentation/xelauikit_screens/static/widgets/header_static.dart';
import 'package:bnv_opendata/presentation/xelauikit_screens/static/widgets/time_section.dart';
import 'package:bnv_opendata/presentation/xelauikit_screens/static/widgets/most_spent-section.dart';
import 'package:flutter/material.dart';
import 'package:bnv_opendata/presentation/xelauikit_screens/static/widgets/chart_logic.dart';

class StaticScreen extends StatefulWidget {
  const StaticScreen({super.key});
  @override
  _StaticScreenState createState() => _StaticScreenState();
}

class _StaticScreenState extends State<StaticScreen> {
  final ChartLogic _chartLogic = ChartLogic();
  DateTime _currentSelectedMonth = DateTime(2026, 1);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final incomeSpots = _chartLogic.getIncomeSpots(_currentSelectedMonth);
    final outcomeSpots = _chartLogic.getOutcomeSpots(_currentSelectedMonth);

    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F3),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 225,
              child: Stack(children: [
                HeaderStatic(screenWidth: screenWidth),
                TimeSection(
                  selectedMonth: _currentSelectedMonth,
                  onMonthChanged: (DateTime pickedMonth) {
                    setState(() {
                      _currentSelectedMonth = pickedMonth;
                    });
                  },
                )
              ]),
            ),
            ChartSection(
              spotsIncome: incomeSpots,
              spotsOutcome: outcomeSpots,
            ),
            const SizedBox(height: 16,),
            BudgetStaticSection(),
            const SizedBox(height: 16,),
            MostSpentSection()
          ],
        ),
      ),
    );
  }
}