import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:login_user/pages/user_page.dart';

class LoginPage {
  Future<void> login(
    context,
    String email,
    String password,
  ) async {
    if (email.isNotEmpty && password.isNotEmpty) {
      final response = await http.post(
        Uri.parse('https://reqres.in/api/login'),
        body: ({'email': email, 'password': password}),
      );
      if (response.statusCode == 200) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const UserPage(),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Login invalido'),
          ),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Campos em Branco!'),
        ),
      );
    }
  }
}
