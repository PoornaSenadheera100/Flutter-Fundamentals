import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/widgets/provider_widget3.dart';

class ProviderWidget2 extends StatelessWidget {
  ProviderWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.0,
      width: 250.0,
      color: Colors.green,
      child: Column(
        children: [
          Text("Provider Widget 2"),
          ProviderWidget3(),
        ],
      ),
    );
  }
}
