import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/screens/slider_and_containers_screen.dart';

class SliderAndContainers extends StatefulWidget {
  const SliderAndContainers({super.key});

  @override
  State<SliderAndContainers> createState() => _SliderAndContainersState();
}

class _SliderAndContainersState extends State<SliderAndContainers> {
  // double value = 1.0;

  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<ExampleTwoProvider>(context, listen: false);
    print("rebuild entire build widget");
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider and Containers Screen with Multi Provider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleTwoProvider>(
            builder: (context, value, child) {
              print("Silder Widget rebuild");
              return Slider(
                min: 0,
                max: 1,
                value: value.value,
                onChanged: (newvalue) {
                  print(newvalue);
                  value.setValue(newvalue);
                },
              );
            },
          ),
          Consumer<ExampleTwoProvider>(
            builder: (context, value, child) {
              print("Both containers Widgets rebuild");
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(value.value),
                      ),
                      child: Center(child: Text("Container 1")),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(value.value),
                      ),
                      height: 100,
                      child: Center(child: Text("Container 2")),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
