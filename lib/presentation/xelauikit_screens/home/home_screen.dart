import 'package:bnv_opendata/presentation/xelauikit_screens/home/widgets/wallets_section.dart';
import 'package:flutter/material.dart';
import 'package:bnv_opendata/presentation/xelauikit_screens/home/widgets/header_home.dart';
import 'widgets/budget_section.dart';
import 'widgets/transaction_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F3),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 225,
              child: Stack(
                children: [
                  HeaderHome(screenWidth: screenWidth),
                  const Positioned(
                    top: 113,
                    left: 16,
                    right: 16,
                    height: 97,
                    child: BudgetSection(),
                  ),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WalletsSection(),

                  SizedBox(height: 16),

                  TransactionSection()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}