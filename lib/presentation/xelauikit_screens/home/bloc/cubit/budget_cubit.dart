import 'package:bnv_opendata/config/base/base_cubit.dart';
import 'package:bnv_opendata/data/exception/app_exception.dart';
import 'package:bnv_opendata/data/repositories/home_repository.dart';
import 'package:bnv_opendata/data/result/result.dart';
import 'package:bnv_opendata/data/model/budget_model.dart';
import 'package:bnv_opendata/data/model/wallet_model.dart';
import 'budget_state.dart';

class BudgetCubit extends BaseCubit<BudgetState> {
  BudgetCubit(this._repository) : super(const BudgetState());

  final HomeRepository _repository;
  final AppException error = AppException('', '');

  Future<void> fetchBudgetData(String month) async {
    showLoading(); 
    final result = await _repository.getBudget(month);

    if (result is Error<BudgetResponse>) {
      error
        ..title = result.exception.title
        ..message = result.exception.message;
      showError();
      return;
    }
    if (result is Success<BudgetResponse>) {
      emit(state.copyWith(budgetData: result.data));
      showContent();
      return;
    }
  }
}
