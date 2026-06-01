import 'package:flutter/material.dart';
// Import các widget con bằng đường dẫn tương đối từ folder widgets vừa tạo
import 'widgets/header_home.dart';
import 'widgets/budget_card.dart';
import 'widgets/wallet_card.dart';
import 'widgets/transaction_item.dart';

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
                  const Positioned(
                    top: 113,
                    left: 16,
                    right: 16,
                    child: BudgetCard(),
                  ),
                ],
              ),
            ),

            // --- KHỐI NỘI DUNG WALLETS & TRANSACTIONS ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Tiêu đề Wallets
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Wallets', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Color(0xFF242424))),
                      Text('See All', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Color(0xFF489FCD))),
                    ],
                  ),
                  const SizedBox(height: 8),

                  // Khu vực chứa thẻ Ví
                  Row(
                    children: [
                      WalletCard(
                        gradientColors: const [Color(0xFFEBF0FA), Color(0xFFDCE4F7)],
                        balance: '10,000',
                        trailingText: '3456',
                        trailingIcon: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image.asset('assets/images/icon-1.png', width: 24, height: 24, fit: BoxFit.cover),
                        ),
                        isCard: true,
                      ),
                      const SizedBox(width: 12),
                      WalletCard(
                        gradientColors: const [Color(0xFFEAF5EE), Color(0xFFDCEFE3)],
                        balance: '10,000',
                        trailingText: 'Cach',
                        trailingIcon: Container(
                          width: 24, height: 24,
                          decoration: const BoxDecoration(color: Color(0xFF12D14C), shape: BoxShape.circle),
                          child: Image.asset('assets/images/icon-2.png'),
                        ),
                        isCard: false,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Tiêu đề Transactions
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Transactions', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: Color(0xFF242424))),
                      Text('See All', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: Color(0xFF489FCD)))
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text('Today', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF707070))),
                  const SizedBox(height: 12),

                  // Danh sách lịch sử giao dịch bằng Component tái sử dụng
                  TransactionItem(
                    title: 'ALDREES 303',
                    date: '07-01-2023',
                    amount: '-\$32.00',
                    amountColor: const Color(0xFFE25C5C),
                    leadingIcon: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 35, height: 35,
                          decoration: BoxDecoration(
                            color: const Color(0xFFDEBDC5),
                            borderRadius: BorderRadius.circular(3),
                            border: Border.all(color: const Color(0xFF893547), width: 2),
                          ),
                          child: Image.asset('assets/images/icon-3.png'),
                        ),
                        Positioned(
                          top: 25, left: 25,
                          child: Container(
                            width: 14, height: 14,
                            decoration: BoxDecoration(
                              color: const Color(0xFFDEBDC5),
                              borderRadius: BorderRadius.circular(3),
                              border: Border.all(color: const Color(0xFF893547), width: 2),
                            ),
                            child: Image.asset('assets/images/icon-4.png'),
                          ),
                        )
                      ],
                    ),
                  ),
                  TransactionItem(
                    title: 'ABYAN CAPITAL',
                    date: '07-01-2023',
                    amount: '-\$170.00',
                    amountColor: const Color(0xFFE25C5C),
                    leadingIcon: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 35, height: 35,
                          decoration: BoxDecoration(color: const Color(0xFFDEBDC5), borderRadius: BorderRadius.circular(3)),
                          child: Image.asset('assets/images/icon-5.png'),
                        ),
                        Positioned(
                          top: 25, left: 25,
                          child: Image.asset('assets/images/icon-6.png'),
                        )
                      ],
                    ),
                  ),
                  TransactionItem(
                    title: 'Gryb Company',
                    date: '07-01-2023',
                    amount: '-\$28.00',
                    amountColor: const Color(0xFFE25C5C),
                    leadingIcon: Container(
                      width: 35, height: 35,
                      decoration: BoxDecoration(
                        color: const Color(0xFFDEBDC5),
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(color: const Color(0xFF893547), width: 2),
                      ),
                      child: Image.asset('assets/images/icon-7.png'),
                    ),
                  ),
                  TransactionItem(
                    title: 'BANK AL-JAZIRA',
                    date: '07-01-2023',
                    amount: '+\$850.00',
                    amountColor: const Color(0xFF53D258),
                    leadingIcon: Container(
                      width: 35, height: 35,
                      decoration: BoxDecoration(
                        color: const Color(0xFFCEE2E8),
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(color: const Color(0xFF619CA4), width: 2),
                      ),
                      child: Image.asset('assets/images/icon-8.png'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}