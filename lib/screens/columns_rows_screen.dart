import 'package:flutter/material.dart';

class ColumnsRows extends StatelessWidget {
  const ColumnsRows({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Columns & Rows"),
      ),
      body: Column(
        children: [
          Container(
            width: 300.0,
            height: 100.0,
            color: Colors.deepOrange,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("This"),
                Text(" is"),
                Text(" a"),
                Text(" ROW."),
              ],
            ),
          ),
          Container(
            width: 200.0,
            height: 200.0,
            color: Colors.blue,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("This"),
                Text(" is"),
                Text(" a"),
                Text(" COLUMN."),
              ],
            ),
          )
        ],
      ),
    );
  }
}
