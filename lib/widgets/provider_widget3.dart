import 'package:flutter/material.dart';

class ProviderWidget3 extends StatelessWidget {
  int _number = 20;

  ProviderWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 470.0,
      width: 220.0,
      color: Colors.purple,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Provider Widget 3", style: TextStyle(color: Colors.white),),
          Text(_number.toString(), style: TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: ElevatedButton(onPressed: (){

            }, child: Text("Generate New Number")),
          )
        ],
      ),
    );
  }
}
