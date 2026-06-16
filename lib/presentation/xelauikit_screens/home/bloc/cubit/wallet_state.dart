import 'package:equatable/equatable.dart';
import 'package:bnv_opendata/data/model/wallet_model.dart';

class WalletState extends Equatable {
  const WalletState({this.walletData});

  final WalletResponse? walletData;

  @override
  List<Object?> get props => [walletData];

  WalletState copyWith({WalletResponse? walletData}) {
    return WalletState(walletData: walletData ?? this.walletData);
  }
}

final class WalletInitial extends WalletState {
  @override
  List<Object> get props => [];
}
