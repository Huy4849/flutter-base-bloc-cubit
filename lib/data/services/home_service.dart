import 'package:bnv_opendata/data/model/budget_model.dart';
import 'package:bnv_opendata/data/model/transaction_model.dart';
import 'package:bnv_opendata/data/model/wallet_model.dart';
import 'package:bnv_opendata/utils/constants/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'home_service.g.dart';

@RestApi()
abstract class HomeService {
  factory HomeService(Dio dio, {String baseUrl}) = _HomeService;

  @GET(ApiConstants.WALLETS)
  Future<WalletResponse> getWallets();

  @GET(ApiConstants.BUDGETS)
  Future<BudgetResponse> getBudgets(@Query('month') String month);

  @GET(ApiConstants.TRANSACTIONS)
  Future<TransactionResponse> getTransactions();
}