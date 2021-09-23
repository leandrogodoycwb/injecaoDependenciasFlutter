import 'package:flutter_test_lib/config/env.dart';
import 'package:flutter_test_lib/home/home_rep_api.dart';
import 'package:flutter_test_lib/home/home_rep_mock.dart';
import 'package:flutter_test_lib/home/homeviewmodel.dart';
import 'package:flutter_test_lib/login/rep_api.dart';
import 'package:flutter_test_lib/login/rep_mock.dart';
import 'package:flutter_test_lib/login/viewmodel.dart';
import 'package:get_it/get_it.dart';
import 'package:lib/imports.dart';

var get = GetIt.instance;

void initGetIt(Env env) {
  bool api = env == Env.HOMOL;

  get
    ..registerSingleton<Prefs>(SharedPrefs())
    ..registerSingleton<NetworkManager>(FlutterNetworkManager());

  repository(api);
  viewModel();
}

repository(bool api) {
  get
    ..registerFactory(
        () => api ? LoginRepositoryApi() : MockLoginRepositoryApi());
}

viewModel() {
  get..registerFactory(() => LoginViewModel(get()));
}

void homeViewModel(bool api) {
  get..registerFactory(() => HomeViewModel(get()));
}

repositoryApiHome(bool api) {
  get
    ..registerFactory(
        () => api ? HomeRepositoryApi() : MockHomeRepositoryApi());
}
