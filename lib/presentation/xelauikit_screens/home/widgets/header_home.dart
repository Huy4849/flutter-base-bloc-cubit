import 'package:flutter/material.dart';

class HeaderHome extends StatelessWidget {
  final double screenWidth;

  const HeaderHome({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      height: 159,
      color: const Color(0xFF8557A0),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 9, 16, 9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset('assets/images/avatar1.png', width: 42, height: 42),
                const SizedBox(width: 12),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Balance',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFFF3F3F3)),
                    ),
                    Text(
                      '\$ 75,259',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(9),
              ),
              child: const Icon(Icons.add, color: Colors.black, size: 30),
            ),
          ],
        ),
      ),
    );
  }
}