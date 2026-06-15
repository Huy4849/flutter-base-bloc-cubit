import 'package:json_annotation/json_annotation.dart';

part 'budget_model.g.dart';

@JsonSerializable()
class BudgetResponse {
  BudgetResponse({this.data});
  factory BudgetResponse.fromJson(Map<String, dynamic> json) => _$BudgetResponseFromJson(json);
  
  final BudgetData? data;
}

@JsonSerializable()
class BudgetData {
  BudgetData({this.budget});
  factory BudgetData.fromJson(Map<String, dynamic> json) => _$BudgetDataFromJson(json);

  final BudgetModel? budget;
}

@JsonSerializable()
class BudgetModel {
  BudgetModel({
    this.year, this.month, this.limit, this.spent, 
    this.saved, this.remaining, this.percentUsed, 
    this.daysLeft, this.dailyBudget
  });

  factory BudgetModel.fromJson(Map<String, dynamic> json) => _$BudgetModelFromJson(json);

  final int? year;
  final int? month;
  final int? limit;
  final int? spent;
  final int? saved;
  final int? remaining;
  final int? percentUsed;
  final int? daysLeft;
  final DailyBudget? dailyBudget;
}

@JsonSerializable()
class DailyBudget {
  DailyBudget({this.min, this.max});
  factory DailyBudget.fromJson(Map<String, dynamic> json) => _$DailyBudgetFromJson(json);

  final double? min;
  final double? max;
}
