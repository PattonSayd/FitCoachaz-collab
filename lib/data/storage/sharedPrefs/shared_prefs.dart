import 'package:shared_preferences/shared_preferences.dart';

import 'key_value_store.dart';

class SharedPrefs extends KeyValueStore {
  late SharedPreferences _sharedPreferences;

  @override
  Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  @override
  Future<T?> read<T>(TypeStoreKey<T> typedStoreKey) async =>
      _sharedPreferences.get(typedStoreKey.key) as T?;

  @override
  Future<bool> contains(TypeStoreKey typedStoreKey) async =>
      _sharedPreferences.containsKey(typedStoreKey.key);

  @override
  Future<void> write<T>(TypeStoreKey<T> typedStoreKey, T? value) async {
    if (value == null) {
      await _sharedPreferences.remove(typedStoreKey.key);

      return;
    }
    switch (T) {
      case int:
        await _sharedPreferences.setInt(typedStoreKey.key, value as int);
        break;
      case String:
        await _sharedPreferences.setString(typedStoreKey.key, value as String);
        break;
      case double:
        await _sharedPreferences.setDouble(typedStoreKey.key, value as double);
        break;
      case bool:
        await _sharedPreferences.setBool(typedStoreKey.key, value as bool);
        break;
      case List:
        await _sharedPreferences.setStringList(
            typedStoreKey.key, value as List<String>);
        break;
    }
  }
}
