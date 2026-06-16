import 'package:json_annotation/json_annotation.dart';

part 'wallet_model.g.dart';

@JsonSerializable()
class WalletResponse {
  WalletResponse({this.data});

  factory WalletResponse.fromJson(Map<String, dynamic> json) => _$WalletResponseFromJson(json);

  final WalletData? data;
}

@JsonSerializable()
class WalletData {
  WalletData({this.totalBalance, this.wallets});

  factory WalletData.fromJson(Map<String, dynamic> json) => _$WalletDataFromJson(json);

  final int? totalBalance;
  final List<WalletModel>? wallets;
}

@JsonSerializable()
class WalletModel {
  WalletModel({
    this.id,
    this.name,
    this.type,
    this.balance,
    this.cardLast4,
    this.icon,
    this.color,
});

  factory WalletModel.fromJson(Map<String, dynamic> json) => _$WalletModelFromJson(json);

  final String? id;
  final String? name;
  final String? type;
  final int? balance;
  final String? cardLast4;
  final String? color;
  final String? icon;
}
