import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepOrange,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
            title: const Text("My App"),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              ),
            ],
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(30.0),
              child: TabBar(
                tabs: [
                  Icon(Icons.car_crash),
                  Icon(Icons.train_rounded),
                  Icon(Icons.airplanemode_active),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
