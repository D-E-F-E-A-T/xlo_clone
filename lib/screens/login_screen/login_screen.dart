import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:xlo/controllers/login_controller/login_controller.dart';
import 'package:xlo/screens/login_screen/components/or_divider.dart';
import 'components/facebook_button.dart';
import 'components/login_button.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    final loginController = Provider.of<LoginController>(context);
    print(loginController.state+loginController.buttonDisable.toString());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Entrar"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              FacebookButton(),
              OrDivider(),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 11),
                child: Text(
                  "Acessar com E-mail:",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.grey[900]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, bottom: 4),
                child: Text(
                  "E-mail",
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Observer(builder: (_) {
                return TextField(
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: false,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    errorText: loginController.errorEmail == ""
                        ? null
                        : loginController.errorEmail,
                    enabled: loginController.enabled,
                  ),
                  onChanged: loginController.setEmail,
                );
              }),
              Padding(
                padding: const EdgeInsets.only(left: 3, bottom: 4, top: 26),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Senha",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    GestureDetector(
                      child: Text(
                        "Esqueceu sua senha?",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Observer(builder: (_) {
                return TextField(
                  obscureText: true,
                  autocorrect: false,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    errorText: loginController.errorPassword == ""
                        ? null
                        : loginController.errorPassword,
                    enabled: loginController.enabled,
                  ),
                  onChanged: loginController.setPassword,
                );
              }),
              LoginButton(),
              Divider(
                color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "Não tem uma conta? ",
                      style: TextStyle(fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Cadastre-se",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                          fontSize: 16,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


}
