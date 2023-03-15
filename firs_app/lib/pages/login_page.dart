import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeroute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: (Column(
              children: [
                Center(
                    child: Image.asset(
                  "assets/images/login_image2.jpg",
                  fit: BoxFit.cover,
                  // height: 600,
                )),
                //SizedBox is used generally to add spacing /you can also use padding
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Welcome $name",
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
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username cannot be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true, //this hides your entered letters
                        decoration: InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Password Length Should be atleast 6 characters";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Material(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changebutton ? 25 : 16),
                  child: InkWell(
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changebutton ? 50 : 100,
                        height: 40,
                        alignment: Alignment.center,
                        child: changebutton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "LOGIN",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          shape: changebutton
                              ? BoxShape.circle
                              : BoxShape.rectangle,
                        )),
                  ),
                )
              ],
            )),
          ),
        ));
  }
}
