import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key}); // but error come here what it says read it
  // try to remove const here and before calling HomeScreen in main.dart file

  // Stateless Widgets are mutable , they never change their state
  int x =
      0; // first you go down in floating action button then come here, You removed final
  @override
  Widget build(BuildContext context) {
    print(("rebuild"));
    return Scaffold(
      appBar: AppBar(title: Text("Provider")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Text(x.toString(), style: TextStyle(fontSize: 50)),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x++; // try to remove final keyword before x variable declaration
          print((x));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
      // now we have achieved one thing we have printed value of x variable
      // and icrement its value in flating action button before removing 
      // <final> keyword before coming int x varible and <const> keyword before constuctor
      // this class and from main.dart file calling HomeScreen before caliing const keyword was there 
      // we removed that keyword to achieve this access and icrements its value before this was not achieved


      // Now we have achieved but still we can't show its incremented value in screen 
      // because this is stateless widgets and they don't rebuild themselves again and again

      // when i tap floating action button x value increment in console but in screen have same value 
      // that first time build widget was rebuild that value come in screen

      // if you change its value from variable and make hot load to screen it will render new value from
      // x variable


      // Now we have Stateful widget to rebuild this incremented values in screen on each increment value