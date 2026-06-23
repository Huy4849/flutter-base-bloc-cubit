import 'package:bnv_opendata/config/base/base_cubit.dart';
import 'package:bnv_opendata/data/exception/app_exception.dart';
import 'package:bnv_opendata/data/repositories/home_repository.dart';
import 'package:bnv_opendata/data/result/result.dart';
import 'package:bnv_opendata/data/model/wallet_model.dart';

import 'wallet_state.dart';

class WalletCubit extends BaseCubit<WalletState> {
  WalletCubit(this._repository) : super(const WalletState());

  final HomeRepository _repository;
  final AppException error = AppException('', '');

  Future<void> fetchWalletData() async {
    showLoading();
    final result = await _repository.getWallets();

    if (result is Error<WalletResponse>) {
      error
        ..title = result.exception.title
        ..message = result.exception.message;
      showError();
    }
    if(result is Success<WalletResponse>) {
      emit(state.copyWith(walletData: result.data));
      showContent();
    }
  }
}
