import 'package:shared_preferences/shared_preferences.dart';

class AppPreference {
  static const THEME_SETTING = 'THEMESETTING';

  setThemePref(bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(THEME_SETTING, value);
  }

  Future<bool> getTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(THEME_SETTING) ?? false;
  }
}
