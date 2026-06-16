import 'package:bnv_opendata/data/model/wallet_model.dart';
import 'package:bnv_opendata/utils/constants/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'wallet_service.g.dart';

@RestApi()
abstract class WalletService {
  factory WalletService(Dio dio, {String baseUrl}) = _WalletService;

  @GET(ApiConstants.WALLETS)
  Future<WalletResponse> getWallets();
}