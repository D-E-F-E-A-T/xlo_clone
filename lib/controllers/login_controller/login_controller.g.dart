// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on LoginControllerBase, Store {
  Computed<bool> _$validadoEmailPassComputed;

  @override
  bool get validadoEmailPass => (_$validadoEmailPassComputed ??=
          Computed<bool>(() => super.validadoEmailPass))
      .value;

  final _$errorEmailAtom = Atom(name: 'LoginControllerBase.errorEmail');

  @override
  String get errorEmail {
    _$errorEmailAtom.context.enforceReadPolicy(_$errorEmailAtom);
    _$errorEmailAtom.reportObserved();
    return super.errorEmail;
  }

  @override
  set errorEmail(String value) {
    _$errorEmailAtom.context.conditionallyRunInAction(() {
      super.errorEmail = value;
      _$errorEmailAtom.reportChanged();
    }, _$errorEmailAtom, name: '${_$errorEmailAtom.name}_set');
  }

  final _$errorPasswordAtom = Atom(name: 'LoginControllerBase.errorPassword');

  @override
  String get errorPassword {
    _$errorPasswordAtom.context.enforceReadPolicy(_$errorPasswordAtom);
    _$errorPasswordAtom.reportObserved();
    return super.errorPassword;
  }

  @override
  set errorPassword(String value) {
    _$errorPasswordAtom.context.conditionallyRunInAction(() {
      super.errorPassword = value;
      _$errorPasswordAtom.reportChanged();
    }, _$errorPasswordAtom, name: '${_$errorPasswordAtom.name}_set');
  }

  final _$enabledAtom = Atom(name: 'LoginControllerBase.enabled');

  @override
  bool get enabled {
    _$enabledAtom.context.enforceReadPolicy(_$enabledAtom);
    _$enabledAtom.reportObserved();
    return super.enabled;
  }

  @override
  set enabled(bool value) {
    _$enabledAtom.context.conditionallyRunInAction(() {
      super.enabled = value;
      _$enabledAtom.reportChanged();
    }, _$enabledAtom, name: '${_$enabledAtom.name}_set');
  }

  final _$emailAtom = Atom(name: 'LoginControllerBase.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$passwordAtom = Atom(name: 'LoginControllerBase.password');

  @override
  String get password {
    _$passwordAtom.context.enforceReadPolicy(_$passwordAtom);
    _$passwordAtom.reportObserved();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.context.conditionallyRunInAction(() {
      super.password = value;
      _$passwordAtom.reportChanged();
    }, _$passwordAtom, name: '${_$passwordAtom.name}_set');
  }

  final _$stateAtom = Atom(name: 'LoginControllerBase.state');

  @override
  String get state {
    _$stateAtom.context.enforceReadPolicy(_$stateAtom);
    _$stateAtom.reportObserved();
    return super.state;
  }

  @override
  set state(String value) {
    _$stateAtom.context.conditionallyRunInAction(() {
      super.state = value;
      _$stateAtom.reportChanged();
    }, _$stateAtom, name: '${_$stateAtom.name}_set');
  }

  final _$buttonDisableAtom = Atom(name: 'LoginControllerBase.buttonDisable');

  @override
  bool get buttonDisable {
    _$buttonDisableAtom.context.enforceReadPolicy(_$buttonDisableAtom);
    _$buttonDisableAtom.reportObserved();
    return super.buttonDisable;
  }

  @override
  set buttonDisable(bool value) {
    _$buttonDisableAtom.context.conditionallyRunInAction(() {
      super.buttonDisable = value;
      _$buttonDisableAtom.reportChanged();
    }, _$buttonDisableAtom, name: '${_$buttonDisableAtom.name}_set');
  }

  final _$loginWithEmailAsyncAction = AsyncAction('loginWithEmail');

  @override
  Future<bool> loginWithEmail() {
    return _$loginWithEmailAsyncAction.run(() => super.loginWithEmail());
  }

  final _$loginWithFabebookAsyncAction = AsyncAction('loginWithFabebook');

  @override
  Future<bool> loginWithFabebook() {
    return _$loginWithFabebookAsyncAction.run(() => super.loginWithFabebook());
  }

  final _$LoginControllerBaseActionController =
      ActionController(name: 'LoginControllerBase');

  @override
  dynamic setEmail(String value) {
    final _$actionInfo = _$LoginControllerBaseActionController.startAction();
    try {
      return super.setEmail(value);
    } finally {
      _$LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPassword(String value) {
    final _$actionInfo = _$LoginControllerBaseActionController.startAction();
    try {
      return super.setPassword(value);
    } finally {
      _$LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic disableButton() {
    final _$actionInfo = _$LoginControllerBaseActionController.startAction();
    try {
      return super.disableButton();
    } finally {
      _$LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
