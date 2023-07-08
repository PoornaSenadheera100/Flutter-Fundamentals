import 'dart:async';

import 'package:flutter/material.dart';

class StreamBuilderScreen2 extends StatefulWidget {
  const StreamBuilderScreen2({super.key});

  @override
  State<StreamBuilderScreen2> createState() => _StreamBuilderScreen2State();
}

class _StreamBuilderScreen2State extends State<StreamBuilderScreen2> {
  StreamController<dynamic> _controller = StreamController();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData(){
    Future.delayed(Duration(seconds: 5), (){
      _nameController.text = "Poorna Senadheera";
      _ageController.text = "22";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      body: StreamBuilder(
        stream: _controller.stream,
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator.adaptive(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
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
                      const Text("Name :   "),
                      Flexible(
                          child: TextField(
                            enabled: false,
                            controller: _nameController,
                            decoration: const InputDecoration(
                              hintText: "Loading...",
                              border: InputBorder.none,
                            ),
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      const Text("Age     :   "),
                      Flexible(
                          child: TextField(
                            enabled: false,
                            controller: _ageController,
                            decoration: const InputDecoration(
                              hintText: "Loading...",
                              border: InputBorder.none,
                            ),
                          )),
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
