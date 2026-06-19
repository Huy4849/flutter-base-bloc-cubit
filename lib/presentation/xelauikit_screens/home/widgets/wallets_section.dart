import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:bnv_opendata/data/repositories/home_repository.dart';
import 'package:bnv_opendata/presentation/xelauikit_screens/home/bloc/cubit/wallet_cubit.dart';
import 'package:bnv_opendata/presentation/xelauikit_screens/home/bloc/cubit/wallet_state.dart';
import 'wallet_card.dart';

class WalletsSection extends StatelessWidget {
  const WalletsSection({super.key});

  Map<String, dynamic> _getWalletDesign(String? iconType) {
    switch (iconType) {
      case 'card':
        return {
          'colors': [const Color(0xFFEBF0FA), const Color(0xFFDCE4F7)],
          'iconPath': 'assets/images/icon-1.png',
        };
      case 'cash':
        return {
          'colors': [const Color(0xFFEAF5EE), const Color(0xFFDCEFE3)],
          'iconPath': 'assets/images/icon-2.png',
        };
      case 'wallet':
      default:
        return {
          'colors': [const Color(0xFFFDF3E1), const Color(0xFFF9E4C2)],
          'iconPath': 'assets/images/icon-1.png',
        };
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => WalletCubit(Get.find<HomeRepository>())..fetchWalletData(),
      child: BlocBuilder<WalletCubit, WalletState>(
        builder: (context, state) {
          final wallets = state.walletData?.data?.wallets ?? [];

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
            if (wallets.isEmpty)
              const SizedBox(
                height: 102,
                child: Center(child: CircularProgressIndicator()),
              )
            else
              SizedBox(
                height: 102,
                child: CarouselSlider.builder(
                  itemCount: wallets.length,
                  options: CarouselOptions(
                    height: 110,
                    enlargeCenterPage: false,
                    enableInfiniteScroll: false,
                    viewportFraction: 0.44,
                    padEnds: false,
                  ),
                  itemBuilder: (context, index, realIndex) {
                    final wallet = wallets[index];
                    final design = _getWalletDesign(wallet.icon);
                    
                    final balanceStr = wallet.balance?.toString().replaceAllMapped(
                      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                      (Match m) => '${m[1]},'
                    ) ?? '0';

                    return Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: WalletCard(
                        gradientColors: design['colors'] as List<Color>,
                        balance: balanceStr,
                        trailingText: wallet.cardLast4 ?? wallet.name ?? '',
                        iconPath: design['iconPath'] as String,
                        isCheck: index == 0,
                      ),
                    );
                  },
                ),
              )
          ]);
        },
      ),
    );
  }
}
