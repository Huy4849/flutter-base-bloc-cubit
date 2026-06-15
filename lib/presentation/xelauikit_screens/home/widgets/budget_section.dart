import 'package:bnv_opendata/presentation/xelauikit_screens/home/bloc/cubit/budget_cubit.dart';
import 'package:bnv_opendata/presentation/xelauikit_screens/home/bloc/cubit/budget_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:bnv_opendata/widgets/views/state_stream_layout.dart';
import 'budget_card.dart';

class BudgetSection extends StatelessWidget {
  const BudgetSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BudgetCubit(Get.find())..fetchBudgetData('2023-01'),
      child: Builder(
        builder: (context) {
          final cubit = context.read<BudgetCubit>();

          return StateStreamLayout(
            stream: cubit.stateStream,
            retry: () => cubit.fetchBudgetData('2023-01'),
            error: cubit.error,
            textEmpty: 'No budget data',
            child: Positioned(
              top: 113,
              left: 16,
              right: 16,
              child: BlocBuilder<BudgetCubit, BudgetState>(
                builder: (context, state) {
                  final budget = state.budgetData;
                  if (budget == null) return const SizedBox.shrink();

                  return BudgetCard(
                    budgetTitle: 'Tháng ${budget.month} năm ${budget.year}',
                    budgetSpent: '${budget.spent}',
                    budgetTotal: '${budget.limit}',
                    budgetProgress: (budget.percentUsed ?? 0) / 100,
                    budgetPercent: '${budget.percentUsed}%',
                    budgetDaily: 'Daily budget - (\$${budget.dailyBudget?.min} - \$${budget.dailyBudget?.max})',
                    budgetDaysLeft: '${budget.daysLeft} Days left',
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}