import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
//----------------DATA TYPES--------------------//
  int days = 30;
  String name = "Bhupinder";
  // double pi = 3.14;
  // bool isMale = true;
  // num number = 334.28; //num can have int,double i.e any number
  //rather than decalring their type we can use 'var' data type it can automatically determine type of data present in it(like python)
  // var any = "Hello";
  //const dataype cannot be changed once declared
  //only difference in const and 'final' is that final can be changed later

  @override
  Widget build(BuildContext context) {
    //Scaffold is a special widget of material that takes up entire screen
    //similar to html it also has head(appBar),body,footer(navbar) etc
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Catalog App")),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Container(
          child: Text(
              "Welcome To $days Days Of Flutter By $name"), //$ sign is used to access a variables value in dart
        ),
      ),
      drawer: Drawer(),
    );
  }
}
