import 'package:bnv_opendata/data/model/transaction_model.dart';

import 'package:equatable/equatable.dart';

class TransactionState extends Equatable {
  const TransactionState({this.transactionData});

  final TransactionResponse? transactionData;

  @override
  List<Object?> get props => [transactionData];

  TransactionState copyWith({TransactionResponse? transactionData}) {
    return TransactionState(transactionData: transactionData ?? this.transactionData);
  }
}

final class TransactionInitial extends TransactionState {
  @override
  List<Object> get props => [];
}
