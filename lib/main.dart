import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var items = List<String>.generate(100, (index) => "Task ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("List Builder App"),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(Icons.task_alt),
                title: Text(items[index]),
                subtitle: const Text("By Test"),
                trailing: const Icon(Icons.add_box),
                onTap: (){},
              );
            }),
      ),
    );
  }
}
