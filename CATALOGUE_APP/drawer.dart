import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final Profilepicture = "Profile,jpg";
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("BHUPINDER SINGH"),
                accountEmail: Text("bhupi123@gmail.com"),
                currentAccountPicture: CircleAvatar(),
              ))
        ],
      ),
    );
  }
}
