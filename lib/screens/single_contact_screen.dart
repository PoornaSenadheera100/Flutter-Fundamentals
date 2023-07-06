import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/models/Users.dart';

class SingleContactScreen extends StatelessWidget {
  User user;

  SingleContactScreen(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Future Builder"),
      ),
      body: Column(
        children: [
          Image(
            image: NetworkImage(user.avatar),
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          ListTile(
            title: Text(user.name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(user.email, style: const TextStyle(fontSize: 16.0),),
                Text("ID: ${user.index}"),
              ],
            ),
            isThreeLine: true,
          )
        ],
      ),
    );
  }
}
