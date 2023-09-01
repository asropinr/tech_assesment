import 'package:shared_preferences/shared_preferences.dart';

class Prefence {
  static String loginStatus = "login_status";

  Future<SharedPreferences> sharePref() async {
    final sharePref = await SharedPreferences.getInstance();
    return sharePref;
  }

  Future saveString(key, data) async {
    final pref = await sharePref();
    await pref.setString(key, data);
  }

  Future<String?> getString(key) async {
    final pref = await sharePref();
    return pref.getString(
      key,
    );
  }

  setBoolPrefs(String key, bool value) async {
    final pref = await sharePref();
    await pref.setBool(key, value);
  }

  Future<bool?> getBoolPrefs(String key) async {
    final pref = await sharePref();
    return pref.getBool(key);
  }

  Future<void> setStatusLogin() async {
    await setBoolPrefs(loginStatus, true);
  }

  Future<bool> getStatusLogin() async {
    final isStatus = await getBoolPrefs(loginStatus);
    return isStatus ?? false;
  }
}
