import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'wallet_card.dart';

class WalletsSection extends StatelessWidget {
  const WalletsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> fakeWalletsData = [
      {
        'colors': [const Color(0xFFEBF0FA), const Color(0xFFDCE4F7)],
        'balance': '10,000',
        'trailingText': '3456',
        'iconPath': 'assets/images/icon-1.png',
        'isCheck': true,
      },
      {
        'colors': [const Color(0xFFEAF5EE), const Color(0xFFDCEFE3)],
        'balance': '10,000',
        'trailingText': 'Cash',
        'iconPath': 'assets/images/icon-2.png',
        'isCheck': false,
      },
      {
        'colors': [const Color(0xFFEAF5EE), const Color(0xFFDCEFE3)],
        'balance': '10,000',
        'trailingText': 'Cash',
        'iconPath': 'assets/images/icon-2.png',
        'isCheck': false,
      },
    ];

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Wallets',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF242424))),
          Text('See All',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF489FCD))),
        ],
      ),
      const SizedBox(height: 8),
      SizedBox(
        height: 102,
        child: CarouselSlider.builder(
          itemCount: fakeWalletsData.length,
          options: CarouselOptions(
            height: 110, // Chiều cao khu vực hiển thị thẻ ví
            enlargeCenterPage: false, // Thẻ ở giữa tự động to lên 3D
            enableInfiniteScroll: false, // Tắt cuộn vô tận, đến thẻ cuối thì dừng
            viewportFraction: 0.44, // Chiếm 85% chiều rộng màn hình, chừa 15% lấp ló thẻ bên cạnh
            padEnds: false, // Căn chiếc ví đầu tiên áp sát lề trái cho thẳng hàng giao diện
          ),
          itemBuilder: (context, index, realIndex) {
            final wallet = fakeWalletsData[index];
            return Padding(
              padding: const EdgeInsets.only(right: 12),
              child: WalletCard(
                gradientColors: wallet['colors'] as List<Color>,
                balance: wallet['balance'] as String,
                trailingText: wallet['trailingText'] as String,
                iconPath: wallet['iconPath'] as String,
                isCheck: wallet['isCheck'] as bool,
              ),
            );
          },
        ),
      )
    ]);
  }
}
