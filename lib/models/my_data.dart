import 'package:flutter/cupertino.dart';

class MyData extends ChangeNotifier{
  String _title = "Title 1";

  void changeTitle(String newText){
    _title = newText;
    notifyListeners();
  }

  String get title => _title;
}