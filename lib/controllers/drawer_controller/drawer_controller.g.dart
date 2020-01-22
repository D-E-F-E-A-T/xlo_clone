// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drawer_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DrawerCustom on DrawerCustomBase, Store {
  final _$pageControllerAtom = Atom(name: 'DrawerCustomBase.pageController');

  @override
  PageController get pageController {
    _$pageControllerAtom.context.enforceReadPolicy(_$pageControllerAtom);
    _$pageControllerAtom.reportObserved();
    return super.pageController;
  }

  @override
  set pageController(PageController value) {
    _$pageControllerAtom.context.conditionallyRunInAction(() {
      super.pageController = value;
      _$pageControllerAtom.reportChanged();
    }, _$pageControllerAtom, name: '${_$pageControllerAtom.name}_set');
  }

  final _$pageAtom = Atom(name: 'DrawerCustomBase.page');

  @override
  int get page {
    _$pageAtom.context.enforceReadPolicy(_$pageAtom);
    _$pageAtom.reportObserved();
    return super.page;
  }

  @override
  set page(int value) {
    _$pageAtom.context.conditionallyRunInAction(() {
      super.page = value;
      _$pageAtom.reportChanged();
    }, _$pageAtom, name: '${_$pageAtom.name}_set');
  }

  final _$DrawerCustomBaseActionController =
      ActionController(name: 'DrawerCustomBase');

  @override
  dynamic setPage(int value) {
    final _$actionInfo = _$DrawerCustomBaseActionController.startAction();
    try {
      return super.setPage(value);
    } finally {
      _$DrawerCustomBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPageController(int value) {
    final _$actionInfo = _$DrawerCustomBaseActionController.startAction();
    try {
      return super.setPageController(value);
    } finally {
      _$DrawerCustomBaseActionController.endAction(_$actionInfo);
    }
  }
}
