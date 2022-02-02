// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginViewModel on _LoginViewModel, Store {
  Computed<bool>? _$isStatePendingComputed;

  @override
  bool get isStatePending =>
      (_$isStatePendingComputed ??= Computed<bool>(() => super.isStatePending,
              name: '_LoginViewModel.isStatePending'))
          .value;

  final _$emailAtom = Atom(name: '_LoginViewModel.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passwordAtom = Atom(name: '_LoginViewModel.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$isEmailValidAtom = Atom(name: '_LoginViewModel.isEmailValid');

  @override
  bool? get isEmailValid {
    _$isEmailValidAtom.reportRead();
    return super.isEmailValid;
  }

  @override
  set isEmailValid(bool? value) {
    _$isEmailValidAtom.reportWrite(value, super.isEmailValid, () {
      super.isEmailValid = value;
    });
  }

  final _$loginStateAtom = Atom(name: '_LoginViewModel.loginState');

  @override
  DataState<String> get loginState {
    _$loginStateAtom.reportRead();
    return super.loginState;
  }

  @override
  set loginState(DataState<String> value) {
    _$loginStateAtom.reportWrite(value, super.loginState, () {
      super.loginState = value;
    });
  }

  final _$onSignInPressedAsyncAction =
      AsyncAction('_LoginViewModel.onSignInPressed');

  @override
  Future<void> onSignInPressed() {
    return _$onSignInPressedAsyncAction.run(() => super.onSignInPressed());
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
isEmailValid: ${isEmailValid},
loginState: ${loginState},
isStatePending: ${isStatePending}
    ''';
  }
}
