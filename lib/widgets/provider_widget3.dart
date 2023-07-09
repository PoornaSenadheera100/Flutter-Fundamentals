import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/models/data_provider.dart';
import 'package:provider/provider.dart';

class ProviderWidget3 extends StatelessWidget {
  const ProviderWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 470.0,
      width: 220.0,
      color: Colors.purple,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Provider Widget 3",
            style: TextStyle(color: Colors.white),
          ),
          Consumer<MyDataProvider>(
            builder: (BuildContext context, value, Widget? child) {
              return Text(
                value.number.toString(),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: ElevatedButton(
                onPressed: () {
                  Provider.of<MyDataProvider>(context, listen: false)
                      .changeNum();
                },
                child: const Text("Generate New Number")),
          )
        ],
      ),
    );
  }
}
