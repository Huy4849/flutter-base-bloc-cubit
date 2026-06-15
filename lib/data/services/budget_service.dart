import 'package:bnv_opendata/data/model/budget_model.dart';
import 'package:bnv_opendata/utils/constants/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'budget_service.g.dart';

@RestApi()
abstract class BudgetService {
  factory BudgetService(Dio dio, {String baseUrl}) = _BudgetService;

  @GET(ApiConstants.BUDGETS)
  Future<BudgetResponse> getBudgets(@Query('month') String month);
}