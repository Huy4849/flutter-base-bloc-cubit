import 'package:bnv_opendata/data/result/result.dart';
import 'package:bnv_opendata/data/services/budget_service.dart';
import 'package:bnv_opendata/data/model/budget_model.dart';

class BudgetRepository {
  BudgetRepository(this._service);

  final BudgetService _service;

  Future<Result<BudgetModel>> getBudgetData(String month) =>
      runCatchingAsync(() async {
        final response = await _service.getBudgets(month);
        if (response.data != null && response.data!.budget != null) {
          return response.data!.budget!;
        } else {
          throw Exception("No budget data found");
        }
      }, (budget) => budget);
}