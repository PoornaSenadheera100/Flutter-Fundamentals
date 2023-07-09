import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/screens/screen1.dart';
import 'package:provider/provider.dart';

import 'models/my_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
          create: (context) => MyData(),
          builder: (BuildContext context, child) {
            return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Consumer<MyData>(
                  builder: (BuildContext context, value, Widget? child) {
                    return Text(value.title);
                  },
                ),
              ),
              body: const Screen1(),
            );
          }),
    );
  }
}
