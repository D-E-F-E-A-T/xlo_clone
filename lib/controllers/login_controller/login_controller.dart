import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';



class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store{

  @observable
  String errorEmail = "false";
  @observable
  String errorPassword = "false";
  @observable
  bool enabled = true;
  @observable
  String email = "";
  @observable
  String password = "";
  @observable
  String state = "IDLE";
  @observable
  bool buttonDisable = false;


  @computed
  bool get validadoEmailPass => errorEmail == null && errorPassword == null;


  @action
  setEmail(String value){
    email = value;
    if(email.isEmpty){
      errorEmail = "email invalido";
    }else if(!email.contains("@")){
      errorEmail = "email invalido";
    }else{
      errorEmail = null;
    }
  }

  @action
  setPassword(String value){
    password = value;
    if(password.isEmpty){
      errorPassword = "senha invalida";
    }else{
      errorPassword = null;
    }
  }

  @action
  loginWithEmail()async{
    state = "LOADING";
    buttonDisable = true;
    await Future.delayed(Duration(seconds: 3));
    state = "DONE";
    buttonDisable = false;
  }


}