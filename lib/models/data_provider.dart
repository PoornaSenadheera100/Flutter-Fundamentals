import 'dart:math';
import 'package:flutter/material.dart';

class MyDataProvider extends ChangeNotifier {
  int _number = 20;

  void changeNum() {
    _number = Random().nextInt(100);
    notifyListeners();
  }

  int get number => _number;
}
