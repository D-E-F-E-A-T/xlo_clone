import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';



class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store{

  @observable
  String errorEmail;
  @observable
  String errorPassword;
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
  bool get validadoEmailPass => errorEmail == "" && errorPassword == "";


  @action
  setEmail(String value){
    email = value;
    if(email.isEmpty){
      errorEmail = "email invalido";
    }else if(!email.contains("@")){
      errorEmail = "email invalido";
    }else{
      errorEmail = "";
    }
  }

  @action
  setPassword(String value){
    password = value;
    if(password.isEmpty){
      errorPassword = "senha invalida";
    }else{
      errorPassword = "";
    }
  }

  @action
 Future<bool> loginWithEmail()async{
    state = "LOADING";
    buttonDisable = true;
    await Future.delayed(Duration(seconds: 3));
    state = "DONE";
    buttonDisable = false;
    return true;
  }

  @action
  Future<bool> loginWithFabebook()async{
    state = "LOADING_FACEBOOK";
    buttonDisable = true;
    await Future.delayed(Duration(seconds: 3));
    state = "DONE";
    buttonDisable = false;
    return true;
  }
  @action
  disableButton(){
    buttonDisable = false;
  }

}