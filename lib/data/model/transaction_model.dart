import 'package:json_annotation/json_annotation.dart';

part 'transaction_model.g.dart';

@JsonSerializable()
class TransactionResponse {
  TransactionResponse({this.data});

  factory TransactionResponse.fromJson(Map<String, dynamic> json) => _$TransactionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionResponseToJson(this);

  final TransactionData? data;
}

@JsonSerializable()
class TransactionData {
  TransactionData({this.transactions});

  factory TransactionData.fromJson(Map<String, dynamic> json) => _$TransactionDataFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionDataToJson(this);

  final List<TransactionModel>? transactions;
}

@JsonSerializable()
class TransactionModel {
  TransactionModel({
    this.id,
    this.merchantName,
    this.amount,
    this.signedAmount,
    this.type,
    this.note,
    this.occurredAt,
    this.category,
    this.wallet
  });

  factory TransactionModel.fromJson(Map<String, dynamic> json) => _$TransactionModelFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionModelToJson(this);

  final String? id;
  final String? merchantName;
  final int? amount;
  final int? signedAmount;
  final String? type;
  final String? note;
  final String? occurredAt;
  final CategoryModel? category;
  final WalletsModel? wallet;
}

@JsonSerializable()
class CategoryModel {
  CategoryModel({this.id, this.name, this.icon, this.color});

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);

  final String? id;
  final String? name;
  final String? icon;
  final String? color;
}

@JsonSerializable()
class WalletsModel {
  WalletsModel({this.id, this.name});

  factory WalletsModel.fromJson(Map<String, dynamic> json) => _$WalletsModelFromJson(json);

  Map<String, dynamic> toJson() => _$WalletsModelToJson(this);

  final String? id;
  final String? name;
}