import 'package:lib/imports.dart';

class MockHomeRepositoryApi implements HomeRepository {
  @override
  Future login(HomeModel homeModel) async {
      final data = await mockMap("home_mock.json");
  
      return data;
    }
  }
  
  class HomeModel {
  toMap() {}
}

class HomeRepository {
}
