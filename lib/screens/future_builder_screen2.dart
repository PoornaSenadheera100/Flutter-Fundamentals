import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/models/FutureBuilderUser.dart';
import 'package:flutter_fundamentals/screens/future_builder_screen3.dart';
import 'package:http/http.dart' as http;

class FutureBuilderScreen2 extends StatefulWidget {
  const FutureBuilderScreen2({super.key});

  @override
  State<FutureBuilderScreen2> createState() => _FutureBuilderScreen2State();
}

class _FutureBuilderScreen2State extends State<FutureBuilderScreen2> {
  final _url = Uri.parse("https://randomuser.me/api/?results=20");
  late List _contactList;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<List> loadData() async {
    try {
      var response = await http.get(_url);
      var decodedData = jsonDecode(response.body);
      _contactList = decodedData["results"];
    } catch (e) {
      return Future.error(e);
    }
    return _contactList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Future Builder App"),
      ),
      body: FutureBuilder(
        future: loadData(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator.adaptive(),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text("Loading..."),
                  ),
                ],
              ),
            );
          } else {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              snapshot.data[index]["picture"]["large"]),
                        ),
                        title: Text(snapshot.data[index]["name"]["first"] +
                            " " +
                            snapshot.data[index]["name"]["last"]),
                        subtitle:
                            Text("Mobile : ${snapshot.data[index]["phone"]}"),
                        trailing: IconButton(
                          onPressed: () {
                            FutureBuilderUser user = FutureBuilderUser(
                                snapshot.data[index]["name"]["first"] +
                                    " " +
                                    snapshot.data[index]["name"]["last"],
                                snapshot.data[index]["phone"],
                                snapshot.data[index]["picture"]["large"]);
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    FutureBuilderScreen3(user)));
                          },
                          icon: const Icon(Icons.call),
                        ),
                      ),
                      const Divider(
                        height: 0.0,
                      ),
                    ],
                  );
                });
          }
        },
      ),
    );
  }
}
