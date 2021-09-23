import 'package:lib/utils/http_helper.dart' as http;
import 'home_rep_mock.dart';

class HomeRepositoryApi implements HomeRepository {
  @override
  Future login(HomeModel homeModel) async {
    final url = "https://dandelin-server-development.dandelin.io/api/login";

    var response = await http.post(url, body: homeModel.toMap());

    return response;
  }
}
