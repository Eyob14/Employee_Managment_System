import 'dart:convert';

import 'auth.infrustructure.dart';
import 'package:http/http.dart' as http;

class UserDataProvider {
  static const String _baseUrl = "http://localhost:8081/api/signin";

  Future<User> login(User user) async {
    final http.Response response = await http.post(Uri.parse(_baseUrl),
        headers: <String, String>{"Content-Type": "application/json"},
        body: jsonEncode({"email": user.email, "password": user.password}));
    if (response.statusCode == 201) {
      return User.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Failed to login");
    }
  }
  



}
