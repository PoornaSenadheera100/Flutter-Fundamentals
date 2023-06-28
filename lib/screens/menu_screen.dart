import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: const Icon(
          Icons.home,
          color: Colors.amber,
        ),
        title: const Text(
          "Heading",
          style: TextStyle(color: Colors.amber),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.amber,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.amber,
              ))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome to My App",
              style: TextStyle(fontSize: 20.0),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Custom AppBar"), style: ButtonStyle(minimumSize: MaterialStateProperty.resolveWith((states) => Size(150.0, 40.0))),),
            ElevatedButton(onPressed: () {}, child: Text("TabBar"), style: ButtonStyle(minimumSize: MaterialStateProperty.resolveWith((states) => Size(150.0, 40.0))),),
            ElevatedButton(onPressed: () {}, child: Text("Columns & Rows"), style: ButtonStyle(minimumSize: MaterialStateProperty.resolveWith((states) => Size(150.0, 40.0))),),
            ElevatedButton(onPressed: () {}, child: Text("Stateful Widgets"), style: ButtonStyle(minimumSize: MaterialStateProperty.resolveWith((states) => Size(150.0, 40.0))),),
            ElevatedButton(onPressed: () {}, child: Text("List View"), style: ButtonStyle(minimumSize: MaterialStateProperty.resolveWith((states) => Size(150.0, 40.0))),),
            ElevatedButton(onPressed: () {}, child: Text("List Builder"), style: ButtonStyle(minimumSize: MaterialStateProperty.resolveWith((states) => Size(150.0, 40.0))),),
            ElevatedButton(onPressed: () {}, child: Text("Flutter Forms"), style: ButtonStyle(minimumSize: MaterialStateProperty.resolveWith((states) => Size(150.0, 40.0))),),
          ],
        ),
      ),
    );
  }
}
