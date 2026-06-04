import 'package:flutter/material.dart';
import 'widgets/header_static.dart';
import 'widgets/time_section.dart';
class StaticScreen extends StatefulWidget {
  const StaticScreen({super.key});
  @override
  _StaticScreenState createState() => _StaticScreenState();
}

class _StaticScreenState extends State<StaticScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F3),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 225,
              child: Stack(children: [
                HeaderStatic(screenWidth: screenWidth),
                TimeSection()
              ]),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Container(
                width: double.infinity,
                height: 223,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(9)
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/chart.png')

                    Row(
                      children: [

                      ]
                    )
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
