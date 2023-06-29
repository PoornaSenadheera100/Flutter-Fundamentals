import 'package:flutter/material.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  Widget fstTab(){
    return const Center(
      child: Text("Travel by Car"),
    );
  }

  Widget scndTab(){
    return const Center(
      child: Text("Travel by Bus"),
    );
  }

  Widget thrdTab(){
    return const Center(
      child: Text("Travel on Foot"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 20.0,
          title: const Text("Tab Bar App"),
          bottom: const TabBar(
            tabs: [
              Icon(Icons.car_crash),
              Icon(Icons.bus_alert),
              Icon(Icons.directions_walk),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            fstTab(),
            scndTab(),
            thrdTab(),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {  }, child: const Icon(Icons.navigation),),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
