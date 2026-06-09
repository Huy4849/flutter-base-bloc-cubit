import 'package:flutter/material.dart';
import 'package:mat_month_picker_dialog/mat_month_picker_dialog.dart';
import 'package:intl/intl.dart';
import 'time_static.dart';

class TimeSection extends StatefulWidget {
  final DateTime selectedMonth;
  final Function(DateTime selectedMonth) onMonthChanged;

  const TimeSection({
    super.key,
    required this.selectedMonth,
    required this.onMonthChanged,
  });

  @override
  State<TimeSection> createState() => _TimeSectionState();
}

class _TimeSectionState extends State<TimeSection> {
  List<DateTime> _generate6Months(DateTime baseMonth) {
    return List.generate(6, (index) {
      return DateTime(baseMonth.year, index + 1);
    });
  }

  Future<void> _showMonthPicker(BuildContext context) async {
    final DateTime? picked = await showMonthPicker(
      context: context,
      initialDate: widget.selectedMonth,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );

    if (picked != null) {
      widget.onMonthChanged(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    List<DateTime> monthsData = _generate6Months(widget.selectedMonth);

    return Positioned(
      top: 118,
      left: 16,
      right: 16,
      child: Container(
        height: 76,
        padding: const EdgeInsets.only(left: 8, right: 4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(9),
        ),
        child: Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(monthsData.length, (index) {
                  final currentMonth = monthsData[index];

                  final yearStr = DateFormat('yyyy', 'en').format(currentMonth);
                  final monthStr = DateFormat('MMM', 'en').format(currentMonth);

                  final bool isCurrentTabChecked = currentMonth.month == widget.selectedMonth.month &&
                      currentMonth.year == widget.selectedMonth.year;

                  return GestureDetector(
                    onTap: () {
                      widget.onMonthChanged(currentMonth);
                    },
                    child: TimeStatic(
                      yearText: yearStr,
                      monthText: monthStr,
                      isCheck: isCurrentTabChecked,
                    ),
                  );
                }),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.calendar_month, color: Color(0xFF8557A0), size: 26),
              onPressed: () => _showMonthPicker(context),
            ),
          ],
        ),
      ),
    );
  }
}