import 'package:flutter/material.dart';
import 'time_static.dart';

class TimeSection extends StatelessWidget {
  const TimeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> fakeTimedata = [
      {'year': '2023', 'month': 'Jan', 'isCheck': true},
      {'year': '2023', 'month': 'Feb', 'isCheck': false},
      {'year': '2023', 'month': 'Mar', 'isCheck': false},
      {'year': '2023', 'month': 'Apr', 'isCheck': false},
      {'year': '2023', 'month': 'May', 'isCheck': false},
      {'year': '2023', 'month': 'Jun', 'isCheck': false},
    ];

    return Positioned(
      top: 118,
      left: 16,
      right: 16,
      child: Container(
        height: 76,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(9),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: fakeTimedata.map((time) {
            return TimeStatic(
              yearText: time['year'] as String,
              monthText: time['month'] as String,
              isCheck: time['isCheck'] as bool,
            );
          }).toList(),
        ),
      ),
    );
  }
}
