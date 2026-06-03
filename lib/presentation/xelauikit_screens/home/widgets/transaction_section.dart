import 'package:flutter/material.dart';

import 'transaction_item.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> fakeTransactionsData = [
      {
        'title': 'ALDREES 303',
        'date': '07-01-2023',
        'amount': '-\$32.00',
        'amountColor': const Color(0xFFE25C5C),
        'iconIndex': 1, // Đánh số để nhận diện loại icon vẽ Stack bên dưới
      },
      {
        'title': 'ABYAN CAPITAL',
        'date': '07-01-2023',
        'amount': '-\$170.00',
        'amountColor': const Color(0xFFE25C5C),
        'iconIndex': 2,
      },
      {
        'title': 'Gryb Company',
        'date': '07-01-2023',
        'amount': '-\$28.00',
        'amountColor': const Color(0xFFE25C5C),
        'iconIndex': 3,
      },
      {
        'title': 'BANK AL-JAZIRA',
        'date': '07-01-2023',
        'amount': '+\$850.00',
        'amountColor': const Color(0xFF53D258),
        'iconIndex': 4,
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Transactions',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Color(0xFF242424))),
            Text('See All',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Color(0xFF489FCD)))
          ],
        ),
        const SizedBox(height: 8),
        const Text('Today',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF707070))),
        const SizedBox(height: 12),
        ...fakeTransactionsData.map((item) {
          return TransactionItem(
              title: item['title'] as String,
              date: item['date'] as String,
              amount: item['amount'] as String,
              amountColor: item['amountColor'] as Color,
              leadingIcon: _buildTransactionIcon(item['iconIndex'] as int));
        })
      ],
    );
  }

  Widget _buildTransactionIcon(int index) {
    if (index == 1) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: const Color(0xFFDEBDC5),
              borderRadius: BorderRadius.circular(3),
              border: Border.all(color: const Color(0xFF893547), width: 2),
            ),
            child: Image.asset('assets/images/icon-3.png'),
          ),
          Positioned(
            top: 25,
            left: 25,
            child: Container(
              width: 14,
              height: 14,
              decoration: BoxDecoration(
                color: const Color(0xFFDEBDC5),
                borderRadius: BorderRadius.circular(3),
                border: Border.all(color: const Color(0xFF893547), width: 2),
              ),
              child: Image.asset('assets/images/icon-4.png'),
            ),
          )
        ],
      );
    } else if (index == 2) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                color: const Color(0xFFDEBDC5),
                borderRadius: BorderRadius.circular(3)),
            child: Image.asset('assets/images/icon-5.png'),
          ),
          Positioned(
            top: 25,
            left: 25,
            child: Image.asset('assets/images/icon-6.png'),
          )
        ],
      );
    } else if (index == 3) {
      return Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: const Color(0xFFDEBDC5),
            borderRadius: BorderRadius.circular(3),
            border: Border.all(color: const Color(0xFF893547), width: 2),
          ),
          child: Image.asset('assets/images/icon-7.png'));
    } else {
      return Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          color: const Color(0xFFCEE2E8),
          borderRadius: BorderRadius.circular(3),
          border: Border.all(color: const Color(0xFF619CA4), width: 2),
        ),
        child: Image.asset('assets/images/icon-8.png'),
      );
    }
  }
}
