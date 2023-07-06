import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3(this._title, this._changeData, {super.key});
  final String _title;
  final Function _changeData;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(_title),
          ElevatedButton(onPressed: (){
            _changeData("Title 2");
          }, child: const Text("Change Data"))
        ],
      ),
    );
  }
}
