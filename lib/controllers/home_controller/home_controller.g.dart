// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on HomeControllerBase, Store {
  final _$searchAtom = Atom(name: 'HomeControllerBase.search');

  @override
  String get search {
    _$searchAtom.context.enforceReadPolicy(_$searchAtom);
    _$searchAtom.reportObserved();
    return super.search;
  }

  @override
  set search(String value) {
    _$searchAtom.context.conditionallyRunInAction(() {
      super.search = value;
      _$searchAtom.reportChanged();
    }, _$searchAtom, name: '${_$searchAtom.name}_set');
  }

  final _$HomeControllerBaseActionController =
      ActionController(name: 'HomeControllerBase');

  @override
  dynamic setSearch(String value) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction();
    try {
      return super.setSearch(value);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
