import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:bnv_opendata/data/model/transaction_model.dart';

class TransactionItem extends StatelessWidget {
  final TransactionModel transaction;

  const TransactionItem({
    super.key,
    required this.transaction,
  });

  @override
  Widget build(BuildContext context) {
    final isNegative = transaction.signedAmount != null 
        ? transaction.signedAmount! < 0 
        : (transaction.amount != null && transaction.amount! < 0);
    
    final amountColor = isNegative ? const Color(0xFF893547) : const Color(0xFF336C77); 
    final amountSign = isNegative ? '-' : '+';
    final amountVal = transaction.amount != null ? transaction.amount!.abs() : 0;
    
    final amountStr = amountVal.toString().replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]},'
    );

    String timeStr = '';
    try {
      if (transaction.occurredAt != null && transaction.occurredAt!.isNotEmpty) {
        final dt = DateTime.parse(transaction.occurredAt!).toLocal();
        timeStr = DateFormat('HH:mm').format(dt);
      }
    } catch(e) {}

    final title = transaction.merchantName ?? transaction.category?.name ?? 'Transaction';

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      height: 63,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  _buildIcon(),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title, 
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF242424)),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(timeStr, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color(0xFF707070)))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Text('$amountSign\$$amountStr', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: amountColor)),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon() {
    final iconUrl = transaction.category?.icon;
    final colorHex = transaction.category?.color;

    if (iconUrl != null && iconUrl.isNotEmpty) {
      Color bgColor = const Color(0xFFCEE2E8);
      Color borderColor = const Color(0xFF619CA4);

      if (colorHex != null && colorHex.isNotEmpty) {
        try {
          String hex = colorHex.replaceAll('#', '');
          if (hex.length == 6) {
            hex = 'FF$hex';
          }
          final colorInt = int.parse(hex, radix: 16);
          bgColor = Color(colorInt);
          borderColor = bgColor.withOpacity(0.5); 
        } catch (_) {}
      }

      bool isSvg = iconUrl.toLowerCase().endsWith('.svg');

      return Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(3),
          border: Border.all(color: borderColor, width: 2),
        ),
        padding: const EdgeInsets.all(4),
        child: isSvg
            ? SvgPicture.network(iconUrl, placeholderBuilder: (context) => const CircularProgressIndicator())
            : CachedNetworkImage(
                imageUrl: iconUrl,
                placeholder: (context, url) => const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.broken_image, size: 20),
              ),
      );
    }

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