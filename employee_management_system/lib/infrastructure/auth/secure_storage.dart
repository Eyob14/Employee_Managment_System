// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// class SecureStorage {
//   final _storage = FlutterSecureStorage();

//   Future WriteSecureData(String key, String value) async {
//     var writeData = await _storage.write(key: key, value: value);
//     return writeData;
//   }

//   Future readSecureData(String key) async {
//     var writeData = await _storage.read(key: key);
//     return writeData;
//   }

//   Future deleteSecureData(String key) async {
//     var deleteData = await _storage.delete(key: key);
//     return deleteData;
//   }
// }

import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  Future<void> saveToken(String token) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('token', token);
    print(token);
  }

  Future<String?> getToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? token = pref.getString('token');
    return token;
  }

  Future<void> saveEmail(String email) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('email', email);
  }

  Future<String?> getEmail() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? email = pref.getString('email');
    return email;
  }

  Future<void> saveId(String id) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('id', id);
  }

  Future<String?> getId() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? id = pref.getString('id');
    return id;
  }

  Future<void> saveRole(String role) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('role', role);
  }

  Future<String?> getRole() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? role = pref.getString('role');
    return role;
  }

  Future<bool> firstUse() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    if (pref.getBool('first_use') ?? true) {
      pref.setBool('first_use', false);
      return true;
    }
    return false;
  }
}
