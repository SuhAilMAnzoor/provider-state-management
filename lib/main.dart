import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/counter_provider.dart';
import 'package:provider_state_management/provider/slider_and_containers_provider.dart';
import 'package:provider_state_management/screens/counter_screen.dart';
import 'package:provider_state_management/screens/slider_and_containers_screen.dart';

// Before Coming to this repo please first understand why we need state Management
// Like Provider, in StatefulWidget we have SetState Method to rebuild the UI
// Then Why State Managmement and why not setState, so for that you need to go
// in My Repo on github before-provider-using-setstate-rebuild-ui
// in this i have discussed stateless and stateful widget why we need state management
// its better to work with that repo first then come here

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
        ChangeNotifierProvider(create: (_) => ExampleTwoProvider()),
      ],
      child: MaterialApp(
        title: 'Start with Provider State Management',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: SliderAndContainers(),
      ),
    );
  }
}
