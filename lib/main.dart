import 'package:flutter/material.dart';
import 'package:flutter_test_lib/config/di.dart';
import 'package:flutter_test_lib/config/env.dart';
import 'package:flutter_test_lib/login/page.dart';
import 'package:lib/imports.dart';

void main() {
  runApp(MyApp());
  init();
}

init() {
  initGetIt(Env.MOCK);
  AppConfig.setEnv(Env.MOCK);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}
