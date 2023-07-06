import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/screens/screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1(this._title, this._changeData, {super.key});
  final String _title;
  final Function _changeData;

  @override
  Widget build(BuildContext context) {
    return Screen2(_title, _changeData);
  }
}
