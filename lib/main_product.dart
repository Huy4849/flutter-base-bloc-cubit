import 'package:bnv_opendata/domain/env/model/app_constants.dart';
import 'package:bnv_opendata/domain/env/product.dart';
import 'package:bnv_opendata/main.dart';
import 'package:get/get.dart';

Future<void> main() async {
  Get.put(AppConstants.fromJson(configProductEnv));
  await mainApp();
}
