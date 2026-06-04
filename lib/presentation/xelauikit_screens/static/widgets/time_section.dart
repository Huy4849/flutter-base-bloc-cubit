import 'package:flutter/material.dart';
// Sử dụng đường dẫn tương đối để đảm bảo tìm thấy đúng file trong cùng thư mục static/widgets
import 'time_static.dart';

class TimeSection extends StatelessWidget {
  const TimeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> fakeTimedata = [
      {'year': '2023', 'month': 'Jan'},
      {'year': '2023', 'month': 'Feb'},
      {'year': '2023', 'month': 'Mar'},
      {'year': '2023', 'month': 'Apr'},
      {'year': '2023', 'month': 'May'},
      {'year': '2023', 'month': 'Jun'},
    ];

    return TimeStatic(
      timeData: fakeTimedata,
      selectedIndex: 0,
    );
  }
}