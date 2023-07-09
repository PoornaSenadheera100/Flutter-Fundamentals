import 'package:flutter/material.dart';

class ProviderWidget3 extends StatelessWidget {
  int _number = 20;

  ProviderWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.0,
      width: 210.0,
      color: Colors.purple,
      child: Column(
        children: [
          Text("Provider Widget 3", style: TextStyle(color: Colors.white),),
          Text(_number.toString(), style: TextStyle(color: Colors.white),),
          ElevatedButton(onPressed: (){}, child: Text("Generate New Number"))
        ],
      ),
    );
  }
}
