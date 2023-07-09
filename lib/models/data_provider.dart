<<<<<<< HEAD
import 'package:flutter/cupertino.dart';

class MyData extends ChangeNotifier{
  String _title = "Title 1";

  void changeTitle(String newText){
    _title = newText;
    notifyListeners();
  }

  String get title => _title;
}
=======
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
>>>>>>> origin/tution_development
