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
          title: Text("List Builder App"),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.task_alt),
                title: Text(items[index]),
                subtitle: Text("By Test"),
                trailing: Icon(Icons.add_box),
                onTap: (){},
              );
            }),
      ),
    );
  }
}
