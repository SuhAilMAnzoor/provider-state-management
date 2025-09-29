import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/home_screen.dart';
import 'package:provider_state_management/provider/counter_provider.dart';
import 'package:provider_state_management/stateful_widget_screen.dart';
import 'package:provider_state_management/why_provider.dart';
import 'package:provider_state_management/provider/screens/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CountProvider(),
      child: MaterialApp(
        title: 'Start with Provider State Management',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: CounterExample(),
      ),
    );
  }
}
