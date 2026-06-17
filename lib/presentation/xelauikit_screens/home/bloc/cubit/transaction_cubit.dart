import 'package:bnv_opendata/config/base/base_cubit.dart';
import 'package:bnv_opendata/data/exception/app_exception.dart';
import 'package:bnv_opendata/data/repositories/transaction_repository.dart';
import 'package:bnv_opendata/data/result/result.dart';
import 'package:bnv_opendata/data/model/transaction_model.dart';
import 'transaction_state.dart';

class TransactionCubit extends BaseCubit<TransactionState> {
  TransactionCubit(this._repository) : super(const TransactionState());

  final TransactionRepository _repository;
  final AppException error = AppException('', '');

  Future<void> fetchTransactionData() async {
    showLoading();
    final result = await _repository.getTransaction();

    if(result is Success<TransactionResponse>) {
      emit(state.copyWith(transactionData: result.data));
      showContent();
    } else if (result is Error<TransactionResponse>) {
      error
        ..title = result.exception.title
        ..message = result.exception.message;
      showError();
    }
  }
}
