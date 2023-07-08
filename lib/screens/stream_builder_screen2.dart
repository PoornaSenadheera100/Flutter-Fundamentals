import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/models/StreamBuilderUser.dart';

class StreamBuilderScreen2 extends StatefulWidget {
  const StreamBuilderScreen2({super.key});

  @override
  State<StreamBuilderScreen2> createState() => _StreamBuilderScreen2State();
}

class _StreamBuilderScreen2State extends State<StreamBuilderScreen2> {
  final StreamController<dynamic> _controller = StreamController();

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async{
    late StreamBuilderUser user;
    await Future.delayed(const Duration(seconds: 5), (){
       user = StreamBuilderUser("Poorna Senadheera", "22");
    });
    _controller.sink.add(user);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
      ),
      body: StreamBuilder(
        stream: _controller.stream,
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator.adaptive(),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text("Loading..."),
                  ),
                ],
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text("Name :   ", style: TextStyle(fontSize: 20.0),),
                      Text(snapshot.data.name, style: const TextStyle(fontSize: 20.0),),
                    ],
                  ),
                  Row(
                    children: [
                      const Text("Age     :   ", style: TextStyle(fontSize: 20.0),),
                      Text(snapshot.data.age, style: const TextStyle(fontSize: 20.0),),
                    ],
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
