import 'package:flutter/material.dart';

class BudgetCard extends StatelessWidget {
  const BudgetCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358,
      height: 97,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'January budget',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF242424)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: '\$ 480',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xFF2836B5)),
                      ),
                      WidgetSpan(
                        child: Transform.translate(
                          offset: const Offset(0, 2),
                          child: const Text(
                            '/ \$820',
                            style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color(0xFF838486)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Text(
                  '64%',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11, color: Color(0xFF707070)),
                )
              ],
            ),
            const SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(2),
              child: SizedBox(
                height: 4,
                child: LinearProgressIndicator(
                  borderRadius: BorderRadius.circular(2),
                  value: 0.64,
                  backgroundColor: const Color(0xFFF3F3F3),
                  valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF8557A0)),
                ),
              ),
            ),
            const SizedBox(height: 4),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Daily budget - (\$26.45 - 45.33)',
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color(0xFF707070)),
                ),
                Text(
                  '19 days left',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11, color: Color(0xFF707070)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}