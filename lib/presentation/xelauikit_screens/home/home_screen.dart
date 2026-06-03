import 'package:bnv_opendata/presentation/xelauikit_screens/home/widgets/wallets_section.dart';
import 'package:flutter/material.dart';
// Import các widget con bằng đường dẫn tương đối từ folder widgets vừa tạo
import 'widgets/header_home.dart';
import 'widgets/budget_section.dart';
import 'widgets/wallets_section.dart';
import 'widgets/transaction_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F3),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // --- KHỐI BANNER & BUDGET CARD VỚI STACK ---
            SizedBox(
              height: 225,
              child: Stack(
                children: [
                  HeaderHome(screenWidth: screenWidth),
                  BudgetSection(),
                ],
              ),
            ),

            // --- KHỐI NỘI DUNG WALLETS & TRANSACTIONS ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Wallets
                  WalletsSection(),

                  const SizedBox(height: 16),

                  // Transactions
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