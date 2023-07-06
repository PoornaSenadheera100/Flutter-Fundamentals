import 'package:flutter/material.dart';

class ListBuilderScreen extends StatelessWidget {
  var tasks = List<String>.generate(100, (index) => "Task ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Builder"),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) => ListTile(
          leading: Icon(Icons.task_alt, color: Colors.green,),
          title: Text(tasks[index]),
          subtitle: Text("Subtitle"),
          trailing: Icon(Icons.check_box),
        ),
      ),
    );
  }
}
