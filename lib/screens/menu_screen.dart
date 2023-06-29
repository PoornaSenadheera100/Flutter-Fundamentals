import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/screens/custom_app_bar_screen.dart';
import 'package:flutter_fundamentals/screens/tab_bar_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  void onTapCustomAppBarBtn(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>const CustomAppBarScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
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
            const Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Text(
                "Welcome to My App",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                onTapCustomAppBarBtn(context);
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.resolveWith(
                    (states) => const Size(150.0, 40.0)),
              ),
              child: const Text("Custom AppBar"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>const TabBarScreen()));
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.resolveWith(
                    (states) => const Size(150.0, 40.0)),
                backgroundColor: MaterialStateProperty.resolveWith(
                    (states) => Colors.deepOrange),
              ),
              child: const Text("TabBar"),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.resolveWith(
                    (states) => const Size(150.0, 40.0)),
                backgroundColor: MaterialStateProperty.resolveWith(
                    (states) => Colors.amber),
              ),
              child: const Text("Columns & Rows"),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.resolveWith(
                    (states) => const Size(150.0, 40.0)),
                backgroundColor: MaterialStateProperty.resolveWith(
                    (states) => Colors.deepPurple),
              ),
              child: const Text("Stateful Widgets"),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.resolveWith(
                    (states) => const Size(150.0, 40.0)),
                backgroundColor: MaterialStateProperty.resolveWith(
                    (states) => Colors.green),
              ),
              child: const Text("List View"),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.resolveWith(
                    (states) => const Size(150.0, 40.0)),
                backgroundColor: MaterialStateProperty.resolveWith(
                    (states) => Colors.purple),
              ),
              child: const Text("List Builder"),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.resolveWith(
                    (states) => const Size(150.0, 40.0)),
                backgroundColor: MaterialStateProperty.resolveWith(
                    (states) => Colors.yellowAccent),
              ),
              child: const Text("Flutter Forms", style: TextStyle(color: Colors.black),),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.resolveWith(
                        (states) => const Size(150.0, 40.0)),
                backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.pinkAccent),
              ),
              child: const Text("Asynchronous App"),
            ),
          ],
        ),
      ),
    );
  }
}
