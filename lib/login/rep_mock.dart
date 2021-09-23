import 'package:flutter_test_lib/login/rep.dart';
import 'package:flutter_test_lib/login/viewmodel.dart';
import 'package:lib/debug.dart';

class MockLoginRepositoryApi implements LoginRepository {
  @override
  Future login(LoginModel loginModel) async {
    final data = await mockMap("login_mock.json");

    return data;
  }
}
