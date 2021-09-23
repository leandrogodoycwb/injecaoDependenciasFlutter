import 'package:flutter/material.dart';
import 'package:flutter_test_lib/config/di.dart';
import 'package:flutter_test_lib/home/homeviewmodel.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();

  final homeViewModel = get<HomeViewModel>();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      ),
      body: _body(),
    );
  }

  _body() {}
}
