import 'package:flutter/material.dart';

class StatefulWidgetScreen extends StatefulWidget {
  const StatefulWidgetScreen({super.key});

  @override
  State<StatefulWidgetScreen> createState() => _StatefulWidgetScreenState();
}

class _StatefulWidgetScreenState extends State<StatefulWidgetScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(title: Text("StateFul Widgets")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(DateTime.now().toString()),
          Center(child: Text(count.toString(), style: TextStyle(fontSize: 50))),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          print(count);
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

// A StatefulWidget is immutable but its State is mutable that can change its state during its lifetime.
  // using setState((){}); we update state of screen but it will never update a specify widget like in this i want to update only counter
  // value when clicking on floating action button the new incremented value
  // but setState when calls the entire screeen Build widget is rebuild not single counter value
  // 