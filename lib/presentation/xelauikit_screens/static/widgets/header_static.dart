import 'package:flutter/material.dart';

class HeaderStatic extends StatelessWidget {
  final double screenWidth;

  const HeaderStatic({super.key, required this.screenWidth});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      height: 159,
      decoration: BoxDecoration(color: Color(0xFF6541A0)),
      child: Padding(
        padding: EdgeInsets.fromLTRB(16, 12.5, 16, 12.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Statistics',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Color(0xFFF3F3F3))),
            Row(
              children: [
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9)),
                  child: Image.asset(
                    'assets/images/icon-9.png',
                    width: 17.83,
                    height: 20,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9)),
                  child: Image.asset(
                    'assets/images/icon-10.png',
                    width: 19.12,
                    height: 19.12,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}