
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthLocalDataSource {
  Future<void> cacheToken(String token);
  Future<String?> getCachedToken();
  Future<void> clearToken();
  Future<void>cacheIsVerified(bool value);
  Future<bool?>getIsVerified();

}



class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  static const _tokenKey = 'access_token';
  static const _verifiedKey = 'is_verified';

  @override
  Future<void> cacheToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_tokenKey, token);
  }

  @override
  Future<String?> getCachedToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_tokenKey);
  }

  @override
  Future<void> clearToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_tokenKey);
  }
  Future<void> cacheIsVerified(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_verifiedKey, value);
  }

  Future<bool?> getIsVerified() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getBool(_verifiedKey);
  }
}
