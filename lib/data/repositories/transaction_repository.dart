import 'package:bnv_opendata/data/exception/app_exception.dart';
import 'package:bnv_opendata/data/result/result.dart';
import 'package:bnv_opendata/data/services/transaction_service.dart';
import 'package:bnv_opendata/data/model/transaction_model.dart';
import 'package:bnv_opendata/generated/l10n.dart';

class TransactionRepository {
  TransactionRepository(this._service);

  final TransactionService _service;

  Future<Result<TransactionResponse>> getTransaction() async{
    try {
      final response = await _service.getTransactions();
      return Result.success(response);
    } catch(e) {
      return Result.error(AppException(
        S.current.error,
        e.toString(),
      ));
    }
  }

  // Future<Result<TransactionResponse>> createTransaction(Map<String, dynamic> data)
  // async {
  //   try {
  //     final response = await _service.createTransactions(data);
  //     return Result.success(response);
  //   } catch (e) {
  //     return Result.error(AppException(
  //       S.current.error,
  //       e.toString(),
  //     ));
  //   }
  // }
}