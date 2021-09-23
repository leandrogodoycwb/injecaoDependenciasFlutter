import 'package:flutter_test_lib/login/rep.dart';
import 'package:lib/imports.dart';

//não precisa fazer da home
abstract class LoginView {
  void onSucess();
  void onError(String msg);
}

class LoginViewModel {
// precisa fazer da home
  final LoginRepository repository;
  LoginViewModel(this.repository);

  //não precisa fazer da home
  LoginView view;
  final model = LoginModel();

  setEmail(String email) {
    model.email = email;
  }

  // setSenha

  login() {
    exec(
      () => repository.login(model),
      onSuccess: (result) {
        view.onSucess();
      },
      onError: (error) {
        view.onError(error.msg);
      },
    );
  }

  void setSenha(String senha) {}
  //não precisa fazer da home
}

//não precisa fazer da home
class LoginModel {
  String email;
  String senha;

  LoginModel({
    this.email,
    this.senha,
  });

  Map<String, dynamic> toMap() {
    return {
      'username': email,
      'password': senha,
    };
  }
}
