import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:xlo/controllers/login_controller/login_controller.dart';

class FacebookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginController = Provider.of<LoginController>(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      height: 50,
      child: Observer(builder: (_){
        return RaisedButton(
          color: Color.fromRGBO(58, 89, 152, 1),
          disabledColor: Color.fromRGBO(58, 89, 152, 0.7),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25)
          ),
          onPressed: loginController.state == "LOADING_FACEBOOK" ? null : ()async{
            final bool success = await loginController.loginWithFabebook();
            if(success){
              loginController.disableButton();
              Navigator.of(context).pop();
            }
          },
          child: loginController.state == "LOADING_FACEBOOK"
              ? CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          )
              : Text(
            "Entrar com Facebook",
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        );
      }),
    );
  }
}
