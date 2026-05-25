import 'package:bnv_opendata/config/app_config.dart';
import 'package:bnv_opendata/config/resources/color.dart';
import 'package:bnv_opendata/utils/constants/app_constants.dart';

class AppTheme {
  static AppColor? _instance;

  static AppColor getInstance() {
    _instance ??= AppMode.LIGHT == APP_THEME ? LightApp() : DarkApp();
    return _instance!;
  }
}
