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
            child: BlocBuilder<BudgetCubit, BudgetState>(
              builder: (context, state) {
                final budgetModel = state.budgetData?.data?.budget;
                if (budgetModel == null) return const SizedBox.shrink();

                return BudgetCard(
                  budgetTitle: 'Tháng ${budgetModel.month} năm ${budgetModel.year}',
                  budgetSpent: '${budgetModel.spent}',
                  budgetTotal: '${budgetModel.limit}',
                  budgetProgress: (budgetModel.percentUsed ?? 0) / 100,
                  budgetPercent: '${budgetModel.percentUsed}%',
                  budgetDaily: 'Daily budget - (\$${budgetModel.dailyBudget?.min} - \$${budgetModel.dailyBudget?.max})',
                  budgetDaysLeft: '${budgetModel.daysLeft} Days left',
                );
              },
            ),
          );
        },
      ),
    );
  }
}