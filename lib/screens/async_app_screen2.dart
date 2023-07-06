import 'package:flutter/material.dart';

class AsyncAppScreen2 extends StatefulWidget {
  const AsyncAppScreen2({super.key});

  @override
  State<AsyncAppScreen2> createState() => _AsyncAppScreen2State();
}

class _AsyncAppScreen2State extends State<AsyncAppScreen2> {
  late String name;
  late String age;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text("Name"),
              Flexible(child: TextField()),
            ],
          ),
          Row(
            children: [
              Text("Age"),
              Flexible(child: TextField()),
            ],
          ),
        ],
      ),
    );
  }
}
