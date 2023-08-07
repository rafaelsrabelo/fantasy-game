import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class ApiConfig {
  static final ApiConfig _apiConfig = ApiConfig._internal();
  static String token = '';
  static const String baseUrl =
      'https://0385-2804-14c-de87-83e7-f6eb-47ec-f233-ce1f.ngrok-free.app';
  static const String register = 'auth/register';
  static const String login = 'auth/login';

  factory ApiConfig() {
    return _apiConfig;
  }
  ApiConfig._internal();

  static Future<String> authenticate(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/$login'),
      headers: <String, String>{'Content-Type': 'application/json'},
      body: jsonEncode({'email': email, 'password': password}),
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      String token = data['token'];

      // const secureStorage = FlutterSecureStorage();

      // await secureStorage.write(key: "token", value: token);
      // await secureStorage.write(key: "email", value: token);
      // await secureStorage.write(key: "password", value: token);

      // ApiConfig.token = data['token'];
      return token;
    } else {
      throw Exception('Faild to login');
    }
  }

  static Future<void> logout() async {
    // const secureStorage = FlutterSecureStorage();
    // await secureStorage.delete(key: "token");
  }
}
