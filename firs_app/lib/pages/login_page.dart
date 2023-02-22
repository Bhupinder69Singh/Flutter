import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: (Column(
          children: [
            Center(
                child: Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
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
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
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
                print("Welcome to flutter");
              },
              child: Text("Login"),
            )
          ],
        )));
  }
}
