import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'location_snapshot.dart';

class LocationLocalDataSource {
  static const _key = 'last_location_snapshot';

  Future<void> save(LocationSnapshot snap) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, jsonEncode(snap.toJson()));
  }

  Future<LocationSnapshot?> load() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_key);
    if (raw == null) return null;
    return LocationSnapshot.fromJson(jsonDecode(raw) as Map<String, dynamic>);
  }

  Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_key);
  }
}
