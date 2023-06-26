import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Stateful Widget App",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void increment(){
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Widget App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "You have pushed button times",
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              "$count",
              style: const TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
