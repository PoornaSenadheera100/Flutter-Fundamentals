import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/models/data_provider.dart';
import 'package:flutter_fundamentals/widgets/provider_widget1.dart';
import 'package:provider/provider.dart';

class ProviderPackageScreen extends StatelessWidget {
  const ProviderPackageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Package"),
      ),
      body: ChangeNotifierProvider(
        create: (BuildContext context) => MyDataProvider(),
        builder: (BuildContext context, child) => Center(
          child: Container(
            color: Colors.red,
            height: 600.0,
            width: 350.0,
            child: Column(
              children: [
                const Text("Init Screen"),
                Consumer<MyDataProvider>(
                  builder: (BuildContext context, value, Widget? child) {
                    return Text(
                      "Generated Number : ${value.number}",
                      style: const TextStyle(fontSize: 30.0),
                    );
                  },
                ),
                const ProviderWidget1(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
