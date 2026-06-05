import 'package:flutter/material.dart';

class TimeStatic extends StatelessWidget {
  final String monthText;
  final String yearText;
  final bool isCheck;

  const TimeStatic({
    super.key,
    required this.monthText,
    required this.yearText,
    required this.isCheck,
  });

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        yearText,
        style: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: Color(0xFF242424),
        ),
      ),
      const SizedBox(height: 4),
      Container(
        width: 40,
        height: 35,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isCheck ? const Color(0xFF8557A0) : const Color(0xFFF3F3F3),
          borderRadius: BorderRadius.circular(9),
        ),
        child: Text(
          monthText,
          style: TextStyle(
            fontWeight: isCheck ? FontWeight.w600 : FontWeight.w400,
            fontSize: 12,
            color: isCheck ? const Color(0xFFF3F3F3) : const Color(0xFF242424),
          ),
        ),
      ),
    ]);
  }
}
