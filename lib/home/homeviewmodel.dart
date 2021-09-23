import 'package:flutter_test_lib/home/homepage.dart';
import 'package:flutter_test_lib/home/rep_home.dart';

class HomeViewModel {
  final homeRepository repository;
  HomeViewModel(this.repository);

  set view(HomePage view) {}
}
