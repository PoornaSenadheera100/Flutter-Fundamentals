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
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Rows and Columns"),
        ),
        body: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Text 1"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Text 1"),
                Text("Text 2"),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Text 1"),
                Text("Text 2"),
                Text("Text 3"),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Text 1"),
                Text("Text 2"),
                Text("Text 3"),
                Text("Text 4"),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Text 1"),
                Text("Text 2"),
                Text("Text 3"),
                Text("Text 4"),
                Text("Text 5"),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Text 1"),
                Text("Text 2"),
                Text("Text 3"),
                Text("Text 4"),
                Text("Text 5"),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Text 1"),
                Text("Text 2"),
                Text("Text 3"),
                Text("Text 4"),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Text 1"),
                Text("Text 2"),
                Text("Text 3"),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Text 1"),
                Text("Text 2"),
              ],
            ),
            Text("Text 1"),
          ],
        ),
      ),
    );
  }
}
