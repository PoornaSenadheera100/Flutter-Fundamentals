import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/screens/single_contact_screen.dart';
import 'package:http/http.dart' as http;

import '../models/Users.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  Future<List<User>> getUsers() async {
    var url = Uri.parse("https://randomuser.me/api/?results=20");
    late http.Response response;
    List<User> users = [];

    try {
      response = await http.get(url);

      if (response.statusCode == 200) {
        Map contacts = jsonDecode(response.body);
        List<dynamic> people = contacts['results'];
        for (var item in people) {
          var email = item['email'];
          var name = item['name']['first'] + " " + item['name']['last'];
          var id = item['login']['uuid'];
          var avatar = item['picture']['large'];
          users.add(User(id, name, email, avatar));
        }
      } else {
        return Future.error("Something went wrong, ${response.statusCode}");
      }
    } catch (e) {
      return Future.error(e.toString());
    }

    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Future Builder"),
      ),
      body: FutureBuilder(
          future: getUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: CircularProgressIndicator.adaptive(),
                  ),
                  Text("Loading"),
                ],
              ));
            } else {
              if (snapshot.hasError) {
                return ErrorWidget("Error");
              } else {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage:
                                  NetworkImage(snapshot.data[index].avatar),
                            ),
                            title: Text(snapshot.data[index].name),
                            subtitle: Text(snapshot.data[index].email),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      SingleContactScreen(
                                          snapshot.data[index])));
                            },
                          ),
                          const Divider(
                            height: 0.0,
                          ),
                        ],
                      );
                    });
              }
            }
          }),
    );
  }
}
