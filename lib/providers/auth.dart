import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthProvider extends ChangeNotifier {
  String _token = '';
  int _expires = 0;

  bool get isAuth {
    return _token.isNotEmpty;
  }

  Future<void> _auth(String email, String password, String type) async {
    const url = 'https://apiforlearning.zendvn.com/api/auth/login';

    try {
      final response = await http.post(Uri.parse(url),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode({
            "email": email,
            "password": password,
          }));
      final responseData = jsonDecode(response.body);
      _token = responseData['access_token'];
      _expires = responseData['expires_in'];
      notifyListeners();
    } catch (e) {
      Future.error(e);
    }
  }

  void login(String email, String password) {
    _auth(email, password, 'login');
  }
}
