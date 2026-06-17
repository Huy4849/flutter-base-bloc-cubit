import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:bnv_opendata/data/model/transaction_model.dart';
import 'package:bnv_opendata/data/repositories/transaction_repository.dart';
import 'package:bnv_opendata/presentation/xelauikit_screens/home/bloc/cubit/transaction_cubit.dart';
import 'package:bnv_opendata/presentation/xelauikit_screens/home/bloc/cubit/transaction_state.dart';

import 'transaction_item.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TransactionCubit(Get.find<TransactionRepository>())..fetchTransactionData(),
      child: BlocBuilder<TransactionCubit, TransactionState>(
        builder: (context, state) {
          final transactions = state.transactionData?.data?.transactions ?? [];

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
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
              if (transactions.isEmpty)
                const Center(child: CircularProgressIndicator())
              else ...() {
                Map<String, List<TransactionModel>> grouped = {};
                for (var item in transactions) {
                  String dateStr = item.occurredAt ?? '';
                  String groupKey = 'Unknown Date';
                  try {
                    if (dateStr.isNotEmpty) {
                      final dt = DateTime.parse(dateStr).toLocal();
                      final now = DateTime.now();
                      final today = DateTime(now.year, now.month, now.day);
                      final yesterday = DateTime(now.year, now.month, now.day - 1);
                      final itemDate = DateTime(dt.year, dt.month, dt.day);
                      
                      if (itemDate == today) {
                        groupKey = 'Today';
                      } else if (itemDate == yesterday) {
                        groupKey = 'Yesterday';
                      } else {
                        groupKey = DateFormat('MMM dd, yyyy').format(dt);
                      }
                    }
                  } catch (e) {
                  }
                  grouped.putIfAbsent(groupKey, () => []).add(item);
                }

                return grouped.entries.map((entry) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Text(entry.key,
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF707070))),
                      ),
                      ...entry.value.map((item) {
                        return TransactionItem(transaction: item);
                      })
                    ],
                  );
                }).toList();
              }()
            ],
          );
        },
      ),
    );
  }
}
