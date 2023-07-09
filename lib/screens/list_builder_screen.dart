import 'package:flutter/material.dart';

class ListBuilderScreen extends StatelessWidget {
  final tasks = List<String>.generate(100, (index) => "Task ${index + 1}");

  ListBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Builder"),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.task_alt, color: Colors.green,),
          title: Text(tasks[index]),
          subtitle: const Text("Subtitle"),
          trailing: const Icon(Icons.check_box),
        ),
      ),
    );
  }
}
