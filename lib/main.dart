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
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 4.0,
                indicatorColor: Colors.limeAccent,
              ),
            ),
            elevation: 22.0,
          ),
          body:  TabBarView(children: [
            tab01(),
            tab02(),
            tab03(),
          ]),
        ),
      ),
    );
  }

  Widget tab01() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Tab 01"),
      ],
    );
  }

  Widget tab02() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Tab 02"),
      ],
    );
  }

  Widget tab03() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Tab 03"),
      ],
    );
  }
}
