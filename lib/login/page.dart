import 'package:flutter/material.dart';
import 'package:flutter_test_lib/config/di.dart';
import 'package:flutter_test_lib/home/homepage.dart';
import 'package:flutter_test_lib/login/viewmodel.dart';
import 'package:lib/imports.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> implements LoginView {
  //isso daqui na home
  final viewModel = get<LoginViewModel>();

  final _formKey = GlobalKey<FormState>();

  final _tEmail = TextEditingController();

  final _tSenha = TextEditingController();

  final _focusSenha = FocusNode();

  @override
  void initState() {
    super.initState();
    viewModel.view = this;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return Padding(
      padding: const EdgeInsets.all(60.0),
      child: Column(
        children: [
          AppText(
            hint: "Email",
            onChanged: _onChangedEmail,
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 10),
          AppText(
            hint: "Digite sua senha",
            controller: _tSenha,
            onChanged: _onChangedSenha,
            keyboardType: TextInputType.text,
            nextFocus: _focusSenha,
            password: true,
          ),
          SizedBox(height: 20),
          OutlineButton(
            onPressed: _onClickLogin,
            child: Text("Entrar"),
          ),
        ],
      ),
    );
  }

  _onChangedEmail(String email) {
    viewModel.setEmail(email);
  }

  _onClickLogin() => viewModel.login();

  @override
  void onError(String msg) {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: AppLabel("opa"),
          content: Text(msg),
        );
      },
    );
  }

  @override
  void onSucess() {
    push(HomePage());
  }

  _onChangedSenha(String senha) {
    viewModel.setSenha(senha);
  }
}
