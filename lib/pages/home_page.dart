
import 'package:flutter/material.dart';
import 'package:login_user/pages/user_page.dart';

import 'login.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login do Usuario'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Login(),
    );
  }
}
