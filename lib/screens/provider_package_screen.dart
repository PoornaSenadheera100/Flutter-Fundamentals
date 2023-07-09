import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/widgets/provider_widget1.dart';

class ProviderPackageScreen extends StatelessWidget {
  int _number = 20;

  ProviderPackageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Package"),
      ),
      body: Center(
        child: Container(
          color: Colors.red,
          height: 600.0,
          width: 350.0,
          child: Column(
            children: [
              Text("Generated Number : $_number", style: TextStyle(fontSize: 30.0),),
              ProviderWidget1(),
            ],
          ),
        ),
      ),
    );
  }
}
