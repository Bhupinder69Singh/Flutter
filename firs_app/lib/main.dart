import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // in flutter we have mainly 3types of app i.e MaterialApp,WidgetApp,Cupertino app
    //so 1st we need to specify type of app we are returning
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("Welcome To 30 Days Of Flutter"),
          ),
        ),
      ),
    );
  }
}
