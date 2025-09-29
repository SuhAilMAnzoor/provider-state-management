import 'dart:async';

import 'package:flutter/material.dart';

class WhyProviderScreen extends StatefulWidget {
  const WhyProviderScreen({super.key});

  @override
  State<WhyProviderScreen> createState() => _WhyProviderScreenState();
}

class _WhyProviderScreenState extends State<WhyProviderScreen> {
  int count = 0;

  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 1), (timer) {
      count++;
      print(count);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    print("build $count");
    return Scaffold(
      appBar: AppBar(title: Text("Why Provider")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Time ${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}",
              style: TextStyle(fontSize: 50),
            ),
          ),
          Center(child: Text(count.toString(), style: TextStyle(fontSize: 50))),
        ],
      ),
    );
  }
}
       // to know how this is going to kill your device performance 
       // suppose this a facebook app like have mallions of users 
       //  will you understand how heavy load is this every second 
       // all widgets of entire screen will rebuild every second
       // so thats's why we need state managment like provider 
       // to rebuild only the portion of ui which we want like in this case
       // time and counter value rest of widgets will not rebuild to avoid 
       // pressure on ram and performance 
       // make smooth experience of user 
       // no crash, no slow experience will user face