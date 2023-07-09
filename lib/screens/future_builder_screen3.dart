import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/models/future_builder_user.dart';

class FutureBuilderScreen3 extends StatelessWidget {
  final FutureBuilderUser _user;

  const FutureBuilderScreen3(this._user, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                const Text(
                  "Calling...",
                  style: TextStyle(color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    _user.name,
                    style: const TextStyle(fontSize: 40.0, color: Colors.white),
                  ),
                ),
                Text(
                  _user.phone,
                  style: const TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: CircleAvatar(
                    radius: 80.0,
                    backgroundImage: NetworkImage(_user.image),
                  ),
                ),
              ],
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pop(FutureBuilderScreen3(_user));
              },
              backgroundColor: Colors.red,
              child: const Icon(Icons.call_end),
            )
          ],
        ),
      ),
    );
  }
}
