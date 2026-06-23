import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {
  final List<Color> gradientColors;
  final String balance;
  final String trailingText;
  final String iconPath;
  final bool isCheck;

  const WalletCard({
    super.key,
    required this.gradientColors,
    required this.balance,
    required this.trailingText,
    required this.iconPath,
    required this.isCheck
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 97,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: gradientColors,
        ),
        borderRadius: BorderRadius.circular(14.25),
        border: Border.all(color: Colors.white, width: 2.0),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Total Balance',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFF242424)),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Flexible(
                            child: Text(
                              '\$$balance',
                              style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: Color(0xFF242424)),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Text(
                            '.00',
                            style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color(0xFF838486)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: isCheck ? Image.asset(iconPath, width: 24, height: 24, fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => const Icon(Icons.wallet, size: 24, color: Colors.blue),
                  ) : Container(
                    width: 24, height: 24,
                    decoration: const BoxDecoration(color: Color(0xFF12D14C), shape: BoxShape.circle),
                    child: Image.asset(iconPath, fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => const Icon(Icons.account_balance_wallet, size: 16, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            isCheck
                ? Row(
              children: [
                const Text('. . . .', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 10, color: Color(0xFF242424))),
                const SizedBox(width: 15),
                Text(trailingText, style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 10, color: Color(0xFF242424))),
              ],
            )
                : Text(trailingText, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xFF242424)))
          ],
        ),
      ),
    );
  }
}