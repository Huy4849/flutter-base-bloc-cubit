import 'package:bnv_opendata/data/result/result.dart';
import 'package:bnv_opendata/data/model/budget_model.dart';
import 'package:bnv_opendata/data/model/transaction_model.dart';
import 'package:bnv_opendata/data/model/wallet_model.dart';
import 'package:bnv_opendata/data/services/home_service.dart';
import 'package:bnv_opendata/generated/l10n.dart';
import 'package:bnv_opendata/data/exception/app_exception.dart';

class HomeRepository {
  HomeRepository(this._service);

  final HomeService _service;

  Future<Result<WalletResponse>> getWallets() async {
    try {
      final response = await _service.getWallets();

      return Result.success(response);
    } catch (e) {
      return Result.error(
          AppException(
            S.current.error,
            e.toString(),
          )
      );
    }
  }

  Future<Result<BudgetResponse>> getBudget(String month) async {
    try {
      final response = await _service.getBudgets(month);
      return Result.success(response);
    } catch (e) {
      return Result.error(
        AppException(
          S.current.error,
          e.toString(),
        ),
      );
    }
  }

  Future<Result<TransactionResponse>> getTransaction() async {
    try {
      final response = await _service.getTransactions();
      return Result.success(response);
    } catch (e) {
      return Result.error(
        AppException(
          S.current.error,
          e.toString(),
        ),
      );
    }
  }
}

