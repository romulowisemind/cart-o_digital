import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projetin/pages/card_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String login = '';
    String senha = '';

    validarUsuario() {
      if (login == 'romulocs38@gmail.com' && senha == 'Romulo123') {
        debugPrint('Logado');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CartaoPage(),
          ),
        );
      } else {
        debugPrint('Usuario Incorreto');
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(150),
              child: Image.asset('assets/images/logo_login.webp'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                onChanged: (String email) {
                  login = email;
                },
                decoration: const InputDecoration(
                  hintText: 'Ex: exemplo@exemplo.com',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 25, 20, 40),
              child: TextField(
                onChanged: (String textoSenha) {
                  senha = textoSenha;
                },
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Inserir a senha',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32)),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 500,
              child: ElevatedButton(
                onPressed: () {
                  validarUsuario();
                },
                child: const Text('Login'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
