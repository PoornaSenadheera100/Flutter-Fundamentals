import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/widgets/provider_widget1.dart';
import 'package:provider/provider.dart';

class ProviderPackageScreen extends StatelessWidget {
  ProviderPackageScreen({super.key});

  int _number = 20;

  void changeNum() {
    _number = Random().nextInt(100);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Package"),
      ),
      body: ChangeNotifierProvider(
        create: (BuildContext context) {  },
        builder: (BuildContext context, child)=>Center(
          child: Container(
            color: Colors.red,
            height: 600.0,
            width: 350.0,
            child: Column(
              children: [
                Text("Init Screen"),
                Text(
                  "Generated Number : $_number",
                  style: TextStyle(fontSize: 30.0),
                ),
                ProviderWidget1(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
