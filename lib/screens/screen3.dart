import 'dart:math';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/my_data.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<MyData>(
            builder: (BuildContext context, value, Widget? child) {
              return Text(value.title);
            },
          ),
          ElevatedButton(
              onPressed: () {
                Provider.of<MyData>(context, listen: false)
                    .changeTitle(Random().nextInt(100).toString());
              },
              child: const Text("Change Data"))
        ],
      ),
    );
  }
}
