import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/screens/list_view_screen2.dart';

class ListViewScreen1 extends StatelessWidget {
  const ListViewScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
      ),
      body: ListView(
        children: [
          const Center(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              "My Contacts",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
          )),
          const Divider(
            thickness: 1.0,
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.lightBlue,
              foregroundColor: Colors.white,
              child: Icon(Icons.person),
            ),
            title: const Text("Sanuthi Vihansa"),
            subtitle: const Text("0714204648"),
            trailing: IconButton(
                icon: const Icon(Icons.call),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const ListViewScreen2("Sanuthi Vihansa", "0714204648")));
                }),
            onTap: () {},
          ),
          const Divider(
            thickness: 1.0,
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.lightBlue,
              foregroundColor: Colors.white,
              child: Icon(Icons.person),
            ),
            title: const Text("Hilarina Christy"),
            subtitle: const Text("0712345678"),
            trailing: IconButton(
                icon: const Icon(Icons.call),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const ListViewScreen2("Hilarina Christy", "0712345678")));
                }),
            onTap: () {},
          ),
          const Divider(
            thickness: 1.0,
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.lightBlue,
              foregroundColor: Colors.white,
              child: Icon(Icons.person),
            ),
            title: const Text("Sathira Wijeratne"),
            subtitle: const Text("0718765432"),
            trailing: IconButton(
                icon: const Icon(Icons.call),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const ListViewScreen2("Sathira Wijeratne", "0718765432")));
                }),
            onTap: () {},
          ),
          const Divider(
            thickness: 1.0,
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.lightBlue,
              foregroundColor: Colors.white,
              child: Icon(Icons.person),
            ),
            title: const Text("Test Contact"),
            subtitle: const Text("071XXXXXXX"),
            trailing:
                IconButton(icon: const Icon(Icons.call), onPressed: () {}),
            onTap: () {},
          ),
          const Divider(
            thickness: 1.0,
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.lightBlue,
              foregroundColor: Colors.white,
              child: Icon(Icons.person),
            ),
            title: const Text("Test Contact"),
            subtitle: const Text("071XXXXXXX"),
            trailing:
                IconButton(icon: const Icon(Icons.call), onPressed: () {}),
            onTap: () {},
          ),
          const Divider(
            thickness: 1.0,
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.lightBlue,
              foregroundColor: Colors.white,
              child: Icon(Icons.person),
            ),
            title: const Text("Test Contact"),
            subtitle: const Text("071XXXXXXX"),
            trailing:
                IconButton(icon: const Icon(Icons.call), onPressed: () {}),
            onTap: () {},
          ),
          const Divider(
            thickness: 1.0,
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.lightBlue,
              foregroundColor: Colors.white,
              child: Icon(Icons.person),
            ),
            title: const Text("Test Contact"),
            subtitle: const Text("071XXXXXXX"),
            trailing:
                IconButton(icon: const Icon(Icons.call), onPressed: () {}),
            onTap: () {},
          ),
          const Divider(
            thickness: 1.0,
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.lightBlue,
              foregroundColor: Colors.white,
              child: Icon(Icons.person),
            ),
            title: const Text("Test Contact"),
            subtitle: const Text("071XXXXXXX"),
            trailing:
                IconButton(icon: const Icon(Icons.call), onPressed: () {}),
            onTap: () {},
          ),
          const Divider(
            thickness: 1.0,
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.lightBlue,
              foregroundColor: Colors.white,
              child: Icon(Icons.person),
            ),
            title: const Text("Test Contact"),
            subtitle: const Text("071XXXXXXX"),
            trailing:
                IconButton(icon: const Icon(Icons.call), onPressed: () {}),
            onTap: () {},
          ),
          const Divider(
            thickness: 1.0,
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.lightBlue,
              foregroundColor: Colors.white,
              child: Icon(Icons.person),
            ),
            title: const Text("Test Contact"),
            subtitle: const Text("071XXXXXXX"),
            trailing:
                IconButton(icon: const Icon(Icons.call), onPressed: () {}),
            onTap: () {},
          ),
          const Divider(
            thickness: 1.0,
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.lightBlue,
              foregroundColor: Colors.white,
              child: Icon(Icons.person),
            ),
            title: const Text("Test Contact"),
            subtitle: const Text("071XXXXXXX"),
            trailing:
                IconButton(icon: const Icon(Icons.call), onPressed: () {}),
            onTap: () {},
          ),
          const Divider(
            thickness: 1.0,
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.lightBlue,
              foregroundColor: Colors.white,
              child: Icon(Icons.person),
            ),
            title: const Text("Test Contact"),
            subtitle: const Text("071XXXXXXX"),
            trailing:
                IconButton(icon: const Icon(Icons.call), onPressed: () {}),
            onTap: () {},
          ),
          const Divider(
            thickness: 1.0,
          ),
        ],
      ),
    );
  }
}
