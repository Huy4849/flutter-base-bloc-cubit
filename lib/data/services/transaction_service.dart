import 'package:bnv_opendata/data/model/transaction_model.dart';
import 'package:bnv_opendata/utils/constants/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'transaction_service.g.dart';

@RestApi()
abstract class TransactionService {
  factory TransactionService(Dio dio, {String baseUrl}) = _TransactionService;

  @GET(ApiConstants.TRANSACTIONS)
  Future<TransactionResponse> getTransactions();
}