import 'package:flutter/material.dart';

class TimeStatic extends StatelessWidget {
  final List<Map<String, dynamic>> timeData;
  final int selectedIndex;

  const TimeStatic({
    super.key,
    required this.timeData,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 118,
      left: 16,
      right: 16,
      child: Container(
        width: 358,
        height: 76,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(9),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ...timeData.asMap().entries.map((entry) {
              final int index = entry.key;
              final Map<String, dynamic> item = entry.value;

              final bool isCheck = index == selectedIndex;

              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    item['year'] as String,
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
                      item['month'] as String,
                      style: TextStyle(
                        fontWeight: isCheck ? FontWeight.w600 : FontWeight.w400,
                        fontSize: 12,
                        color: isCheck ? const Color(0xFFF3F3F3) : const Color(0xFF242424),
                      ),
                    ),
                  ),
                ],
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}