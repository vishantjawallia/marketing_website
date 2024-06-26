// ignore_for_file: depend_on_referenced_packages
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
  SharedPreferenceHelper._();
  static SharedPreferences _preferences = _preferences;

  static Future init() async => _preferences = await SharedPreferences.getInstance();

  static Future setString(String key, String value) async => await _preferences.setString(key, value);

  static String getString(String key) => _preferences.getString(key) ?? "";

  static Future setBoolean(String key, bool value) async => await _preferences.setBool(key, value);

  static bool getBoolean(String key) => _preferences.getBool(key) ?? false;

  static int getInt(dynamic key) {
    return _preferences.getInt("$key") ?? 0;
  }

  static Future setInt(String key, int value) async {
    return await _preferences.setInt(key, value);
  }

  static Future clearPref() async {
    await _preferences.clear();
  }
}
