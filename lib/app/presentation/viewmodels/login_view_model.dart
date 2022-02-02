import 'package:mobx/mobx.dart';

import '../../domain/entities/data_state.dart';
import '../../domain/usecases/validate_credential.dart';
import '../../domain/usecases/validate_email.dart';
import '../../domain/usecases/validate_password.dart';

part 'login_view_model.g.dart';

class LoginViewModel = _LoginViewModel with _$LoginViewModel;

abstract class _LoginViewModel with Store {
  _LoginViewModel({
    required ValidateCredential validateCredential,
    required ValidateEmail validateEmail,
    required ValidatePassword validatePassword,
  })  : _validateCredential = validateCredential,
        _validateEmail = validateEmail,
        _validatePassword = validatePassword;

  // USE CASES
  final ValidateCredential _validateCredential;
  final ValidateEmail _validateEmail;
  final ValidatePassword _validatePassword;

  //----------------------------------------------------------------------------
  // OBSERVABLE PROPERTIES AND GETTERS
  //----------------------------------------------------------------------------

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  bool? isEmailValid;

  @observable
  DataState<String> loginState = const DataState.initial();

  @computed
  bool get isStatePending => loginState.maybeWhen(
        pending: (_) => true,
        orElse: () => false,
      );

  /// Returns an error string to display if the input is invalid, or null
  /// otherwise
  String? validateEmail() {
    final result = _validateEmail(email);

    return result.fold(
      (failure) => failure.title,
      (_) => null,
    );
  }

  /// Returns an error string to display if the input is invalid, or null
  /// otherwise
  String? validatePassword() {
    final result = _validatePassword(password);

    return result.fold(
      (failure) => failure.title,
      (_) => null,
    );
  }

  @action
  Future<void> onSignInPressed() async {
    loginState = const DataState.pending();
    final params = CredentialParams(email, password);
    final result = _validateCredential(params);

    result.fold(
      (failure) => loginState = DataState.failure(failure),
      (name) async {
        loginState = DataState.complete(name);
      },
    );
  }
}
