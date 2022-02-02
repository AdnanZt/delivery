import 'package:delivery/app/presentation/views/login/weather_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

import '../../../domain/entities/data_state.dart';
import '../../../injection_container.dart';

import '../../utils/snackbar_util.dart';
import '../../viewmodels/login_view_model.dart';
import '../components/email_form_field.dart';
import '../components/password_form_field.dart';
import '../components/primary_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormFieldState> _emailFieldKey = GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> _passwordFieldKey = GlobalKey<FormFieldState>();

  bool _isSecret = true;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _passwordFocusNode = FocusNode();
  final _emailFocusNode = FocusNode();

  final vm = sl<LoginViewModel>();

  @override
  void initState() {
    super.initState();

    // Show snackbar when login state changes to failure or complete
    reaction<DataState<String>>(
      (_) => vm.loginState,
      (loginState) {
        loginState.maybeWhen(
          failure: (notice) => SnackBarUtil.showFailureSnackBar(context, notice.title),
          complete: (name) {
            SnackBarUtil.showSuccessSnackBar(context, "Connexion Réussie");
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => WeatherView(
                  name: name,
                ),
              ),
            );
          },
          orElse: () {},
        );
      },
    );
  }

  // TODO: (this should be used in Env.dev only)
  void _fillformWithDevAccount() {
    _unfocusAllTextField();
    const email = 'test@gmail.com';
    const password = 'Azerty75000';
    vm.email = email;
    vm.password = password;
    _emailController.text = email;
    _passwordController.text = password;
    _formKey.currentState!.validate();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'login'.toUpperCase(),
              style: const TextStyle(color: Colors.black),
            ),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(children: [
              // ---------------------------------------------------------------------
              //  TITLE
              // ---------------------------------------------------------------------
              const SizedBox(height: 50),
              GestureDetector(
                onDoubleTap: _fillformWithDevAccount,
                child: const Text(
                  'Double tap here !',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              const SizedBox(height: 3),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ---------------------------------------------------------------
                    //  LOGIN REQUEST PENDING WIDGET
                    // ---------------------------------------------------------------
                    Observer(
                      builder: (context) {
                        return vm.loginState.maybeWhen(
                          pending: (_) => const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              color: Colors.blue,
                            ),
                          ),
                          orElse: () => Container(),
                        );
                      },
                    ),
                    const SizedBox(height: 50),
                    // ---------------------------------------------------------------
                    // EMAIL
                    // --------------------------------------------------------------
                    const Text('Email', textAlign: TextAlign.start, style: TextStyle(fontSize: 19)),
                    const SizedBox(height: 7),
                    Observer(
                      builder: (context) {
                        return EmailFormField(
                          controller: _emailController,
                          readOnly: vm.isStatePending,
                          formKey: _emailFieldKey,
                          focusNode: _emailFocusNode,
                          text: "Email",
                          onChanged: (value) {
                            vm.email = value;
                            _emailFieldKey.currentState!.validate();
                          },
                          validator: (_) => vm.validateEmail(),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    // ---------------------------------------------------------------
                    // PASSWORD
                    // ---------------------------------------------------------------
                    const Text('Password', textAlign: TextAlign.start, style: TextStyle(fontSize: 19)),
                    const SizedBox(height: 7),
                    Observer(
                      builder: (context) {
                        return PasswordFormField(
                          controller: _passwordController,
                          readOnly: vm.isStatePending,
                          formKey: _passwordFieldKey,
                          focusNode: _passwordFocusNode,
                          text: 'Mot de passe',
                          obscureText: _isSecret,
                          suffixIcon: InkWell(
                            onTap: () => setState(() {
                              _isSecret = !_isSecret;
                            }),
                            child: Icon(!_isSecret ? Icons.visibility : Icons.visibility_off),
                          ),
                          onChanged: (value) {
                            vm.password = value;
                            _passwordFieldKey.currentState!.validate();
                          },
                          validator: (_) => vm.validatePassword(),
                        );
                      },
                    ),
                    const SizedBox(height: 150),
                  ],
                ),
              ),
              // ---------------------------------------------------------------
              // SIGN IN BUTTON
              // ---------------------------------------------------------------
              Observer(
                builder: (_) {
                  return PrimaryButton(
                    text: "valider".toUpperCase(),
                    onPressed: vm.isStatePending
                        ? null
                        : () {
                            if (_formKey.currentState!.validate()) {
                              _unfocusAllTextField();
                              vm.onSignInPressed();
                            }
                          },
                  );
                },
              ),
            ]),
          )),
    );
  }

  void _unfocusAllTextField() {
    _passwordFocusNode.unfocus();
    _emailFocusNode.unfocus();
  }
}
