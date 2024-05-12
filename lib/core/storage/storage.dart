
import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:ghar_bhada/auth/entities/auth_entity.dart';

class SecureStorage {
  final _secureStorage = const FlutterSecureStorage();

  AndroidOptions _getAndroidOptions() => const AndroidOptions(
    encryptedSharedPreferences: true,
  );

  Future<void> writeAccessToken(String token) async {
    await _secureStorage.write(
        key: 'accessToken', value: token, aOptions: _getAndroidOptions());
  }

  Future<void> writeId(String token) async {
    await _secureStorage.write(
        key: 'id', value: token, aOptions: _getAndroidOptions());
  }

  Future<String?> readId() async {
    var readData =
    await _secureStorage.read(key: 'id', aOptions: _getAndroidOptions());
    return readData;
  }

  Future<String?> readAccessToken() async {
    var user = await readUser();
    return user?.accessToken;
  }

  Future<void> writeRefreshToken(String token) async {
    await _secureStorage.write(
        key: 'refreshToken', value: token, aOptions: _getAndroidOptions());
  }

  Future<void> writeUser(UserEntity userEntity) async {
    await _secureStorage.write(
        key: 'user',
        value: jsonEncode(userEntity.toJson()),
        aOptions: _getAndroidOptions());
  }

  Future<UserEntity?> readUser() async {
    var data =
    await _secureStorage.read(key: 'user', aOptions: _getAndroidOptions());
    return data != null ? UserEntity.fromJson(jsonDecode(data)) : null;
  }

  Future<String?> readRefreshToken() async {
    var user = await readUser();
    return user?.refreshToken;
  }

  Future<void> logoutUser() async {
    await _secureStorage.delete(key: 'user', aOptions: _getAndroidOptions());
    await _secureStorage.delete(
        key: 'accessToken', aOptions: _getAndroidOptions());
  }

  Future<void> removeRefreshToken() async {
    var user = await readUser();
    var userData = user?.toJson();
    userData?['refreshToken'] = null;

    await _secureStorage.write(
        key: 'user',
        value: jsonEncode(userData),
        aOptions: _getAndroidOptions());
  }

}
