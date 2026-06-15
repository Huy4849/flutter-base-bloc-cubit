import 'package:equatable/equatable.dart';
import 'package:bnv_opendata/data/model/budget_model.dart';

class BudgetState extends Equatable {
  const BudgetState({this.budgetData});

  final BudgetModel? budgetData;

  BudgetState copyWith({BudgetModel? budgetData}) {
    return BudgetState(budgetData: budgetData ?? this.budgetData);
  }

  @override
  List<Object?> get props => [budgetData];
}
