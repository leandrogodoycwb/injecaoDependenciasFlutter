import 'package:flutter_test_lib/login/viewmodel.dart';

abstract class LoginRepository {
  Future login(LoginModel loginModel);
}
