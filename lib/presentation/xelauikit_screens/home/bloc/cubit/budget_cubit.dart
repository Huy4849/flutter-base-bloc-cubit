import 'package:bnv_opendata/config/base/base_cubit.dart';
import 'package:bnv_opendata/data/exception/app_exception.dart';
import 'package:bnv_opendata/data/repositories/budget_repository.dart';
import 'package:bnv_opendata/data/result/result.dart';
import 'package:bnv_opendata/data/model/budget_model.dart';
import 'budget_state.dart';

class BudgetCubit extends BaseCubit<BudgetState> {
  BudgetCubit(this._repository) : super(const BudgetState());

  final BudgetRepository _repository;
  final AppException error = AppException('', '');

  Future<void> fetchBudgetData(String month) async {
    showLoading(); 
    final result = await _repository.getBudgetData(month);
    
    if (result is Success<BudgetModel>) {
      emit(state.copyWith(budgetData: result.data));
      showContent();
    } else if (result is Error<BudgetModel>) {
      error
        ..title = result.exception.title
        ..message = result.exception.message;
      showError();
    }
  }
}
