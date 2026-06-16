import 'package:bnv_opendata/data/exception/app_exception.dart';
import 'package:bnv_opendata/data/result/result.dart';
import 'package:bnv_opendata/data/services/wallet_service.dart';
import 'package:bnv_opendata/data/model/wallet_model.dart';
import 'package:bnv_opendata/generated/l10n.dart';

class WalletRepository {
  WalletRepository(this._service);

  final WalletService _service;

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
}