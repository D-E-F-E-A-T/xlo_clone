import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
part 'drawer_controller.g.dart';

class DrawerCustom = DrawerCustomBase with _$DrawerCustom;

abstract class DrawerCustomBase with Store{

  int _pageAtual = 0;

  @observable
  PageController pageController = PageController(initialPage: 0);

  @observable
  int page = 0;

  @action
  setPage(int value) {
    if(value == _pageAtual){
      return;
    }
    _pageAtual = value;
    page = value;
  }

  @action
  setPageController(int value){
    pageController.jumpToPage(value);
  }

}