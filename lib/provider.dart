import 'package:flutter/material.dart';
import 'package:flutter_provider/repository.dart';

class MyProvider extends ChangeNotifier {
  String name = "loading";

  void getFirstName() {
    name = Repository().getFirstName();
    notifyListeners();
  }

  void getLastName() {
    name = Repository().getLastName();
    notifyListeners();
  }
}
