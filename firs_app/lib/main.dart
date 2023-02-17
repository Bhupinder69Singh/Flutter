import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // in flutter we have mainly these types of app i.e MaterialApp,WidgetApp,Cupertino app,Scaffold
    //so 1st we need to specify type of app we are returning
    return MaterialApp(home: HomePage());
  }
}
