import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class _SharedPreferencesKeys {
  static const name = 'name_key';
}

abstract class _FlutterSecureStorageKeys {
  static const token = 'token_key';
}

class ExampleWidgetModel {
  final _storage = SharedPreferences.getInstance();
  final _secureStorage = FlutterSecureStorage();

  Future<void> readName() async {
    final storage = await _storage;
    final name = storage.getString(_SharedPreferencesKeys.name);
    print(name);
  }

  Future<void> setName() async {
    final storage = await _storage;
    final name = storage.setString(_SharedPreferencesKeys.name, 'Maksim');
  }

  Future<void> readToken() async {
    final token = await _secureStorage.read(key: _FlutterSecureStorageKeys.token);
    print(token);
  }

  Future<void> setToken() async {
    _secureStorage.write(key: _FlutterSecureStorageKeys.token, value: 'gh4hg45hgj45uht93h');
  }
}