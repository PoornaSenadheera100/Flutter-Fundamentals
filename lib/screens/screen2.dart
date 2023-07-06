import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/screens/screen3.dart';

class Screen2 extends StatelessWidget {
  const Screen2(this._title, this._changeData, {super.key});
  final String _title;
  final Function _changeData;

  @override
  Widget build(BuildContext context) {
    return Screen3(_title, _changeData);
  }
}
