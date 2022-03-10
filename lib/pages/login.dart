import 'package:flutter/material.dart';
import 'package:login_user/components/container_widget.dart';
import 'package:login_user/components/text_widget.dart';
import 'package:login_user/repository/login_repository.dart';

class Login extends StatelessWidget {
  var loginControler = TextEditingController();
  var senhaControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                child: Image.asset(
                  'images/User.png',
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextWidget(
                'Digite o Login',
                'Login',
                const Icon(Icons.login),
                loginControler,
                senha: false,
              ),
              const SizedBox(
                height: 20,
              ),
              TextWidget(
                'Digite a senha',
                'Senha',
                const Icon(Icons.login),
                senhaControler,
                senha:  true,
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () {
                    LoginPage().login(
                      context,
                      loginControler.text = 'eve.holt@reqres.in',
                      senhaControler.text = 'cityslicka',
                    );
                  },
                  child: const ContainerWidget()
              ),
            ],
          ),
        ),
      ),
    );
  }
}



