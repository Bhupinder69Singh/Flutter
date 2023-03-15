import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: (Column(
            children: [
              Center(
                  child: Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
                // height: 600,
              )),
              //SizedBox is used generally to add spacing /you can also use padding
              SizedBox(
                height: 10,
              ),
              Text(
                "Welcome to Login Page",
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 10.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Username", labelText: "Username"),
                    ),
                    TextFormField(
                      obscureText: true, //this hides your entered letters
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.homeroute);
                },
                child: Text("Login"),
              )
            ],
          )),
        ));
  }
}
