import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/counter_provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final countProvider = Provider.of<CounterProvider>(context, listen: false);
    Timer.periodic(Duration(seconds: 2), (timer) {
      countProvider.addcount();
    });
  }

  @override
  Widget build(BuildContext context) {
    // final countProvider = Provider.of<CountProvider>(context, listen: false);
    print("Rebuild Entire Widget");
    return Scaffold(
      appBar: AppBar(title: Text("Counter Example in Provider")),
      body: Center(
        child: Consumer<CounterProvider>(
          builder: (context, value, child) {
            print("only this widget will rebuild");
            return Text(value.count.toString(), style: TextStyle(fontSize: 50));
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("flaoting action button is also rebuild why");
          // countProvider.addcount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
