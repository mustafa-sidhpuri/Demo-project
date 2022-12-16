import 'dart:convert';


import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class MySecureStorage {
  late FlutterSecureStorage _secureStorage;

  MySecureStorage({required FlutterSecureStorage secureStorage}) {
    _secureStorage = secureStorage;
  }

  void addValue(String key, dynamic value) {
    _secureStorage.write(
        key: key,
        value: value.toString(),
        aOptions: const AndroidOptions(encryptedSharedPreferences: true));
  }

  Future<String> getStringValue(String key) async {
    return await _secureStorage.read(key: key) ?? "";
  }

  Future<Map> getJsonValue(String key) async {
    final val = await _secureStorage.read(key: key);
    if (val != null) {
      return json.decode(val);
    }
    return {};
  }

  Future<num?> getNumberValue(String key) async {
    final val = await _secureStorage.read(key: key) ?? "";
    return num.tryParse(val);
  }

  Future<bool> getBoolValue(String key) async {
    final val = await _secureStorage.read(
            key: key,
            aOptions: const AndroidOptions(encryptedSharedPreferences: true)) ??
        "no";

    if (val == "true") {
      return true;
    } else {
      return false;
    }
  }
}
