import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/widgets/provider_widget2.dart';

class ProviderWidget1 extends StatelessWidget {

  ProviderWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 530.0,
      width: 280.0,
      color: Colors.yellow,
      child: Column(
        children: [
          Text("Provider Widget 1"),
          ProviderWidget2(),
        ],
      ),
    );
  }
}