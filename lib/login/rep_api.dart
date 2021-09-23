import 'package:flutter_test_lib/login/rep.dart';
import 'package:flutter_test_lib/login/viewmodel.dart';
import 'package:lib/utils/http_helper.dart' as http;

class LoginRepositoryApi implements LoginRepository {
  @override
  Future login(LoginModel loginModel) async {
    final url = "https://dandelin-server-development.dandelin.io/api/login";

    var response = await http.post(url, body: loginModel.toMap());

    return response;
  }
}
