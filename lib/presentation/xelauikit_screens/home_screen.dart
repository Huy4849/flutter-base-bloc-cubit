import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(24),
      mainAxisSpacing: 30,
      crossAxisSpacing: 30,
      children: [
        Container(
          width: 150,
          height: 150,
          color: Colors.red,
        ),
        Container(
          width: 150,
          height: 150,
          color: Colors.green,
        ),
        Container(
          width: 150,
          height: 150,
          color: Colors.yellow,
        ),
        Container(
          width: 150,
          height: 150,
          color: Colors.blue,
        ),
        Container(
          width: 150,
          height: 150,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF023F40),
          ),
        ),
        Stack(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.orange),
            ),
            Positioned(
                top: 60,
                left: 60,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                )),
          ],
        )
      ],
    )));
  }
}
