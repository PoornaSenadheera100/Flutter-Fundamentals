import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final StreamController _controller = StreamController();
  int _count = 0;

  @override
  void dispose() {
    super.dispose();
    _controller.close();
  }

  void startCounter() async {
    while (true) {
      _controller.sink.add(_count);
      await Future.delayed(const Duration(seconds: 1), () {
        _count++;
      });
    }
  }

  Stream<int> startCounter2() async* {
    while (true) {
      yield(_count);
      await Future.delayed(const Duration(seconds: 1), () {
        _count++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Stream & Stream Builder"),
        ),
        body: Center(
          child: StreamBuilder(
              stream: startCounter2().where((event) => event.isEven), // for method 1 -->   _controller.stream,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Text("Error");
                } else if (snapshot.connectionState ==
                    ConnectionState.waiting) {
                  return const CircularProgressIndicator.adaptive();
                }
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Counter",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Text(
                      "${snapshot.data}",
                      style: const TextStyle(fontSize: 40.0),
                    ),
                  ],
                );
              }),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            startCounter();
          },
          child: const Icon(Icons.play_arrow),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
