import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:xlo/controllers/login_controller/login_controller.dart';

class LoginButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final loginController = Provider.of<LoginController>(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 24),
      height: 50,
      child: Observer(
        builder: (_) {
          return RaisedButton(
            color: Colors.red,
            disabledColor: Colors.red.withAlpha(150),
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            onPressed: loginController.validadoEmailPass && loginController.buttonDisable == false
                ? () async{
                    final bool success = await loginController.loginWithEmail();
                    if(success){
                      loginController.disableButton(true);
                      Navigator.of(context).pop();
                    }
                  }
                : null,
            child: loginController.state == "LOADING"
                ? CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  )
                : Text(
                    "Entrar",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
          );
        },
      ),
    );
  }
}
