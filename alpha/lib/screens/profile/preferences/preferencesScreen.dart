import 'package:alpha/screens/profile/preferences/preferencesItem.dart';
import 'package:flutter/material.dart';

class PreferencesScreen extends StatelessWidget {
  const PreferencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 47, 47, 47),
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text("Preferences",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.white)),
        leading: BackButton(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 47, 47, 47),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            PreferencesItem(icon: Icons.person, name: "Profile"),
            Divider(),
            PreferencesItem(icon: Icons.list, name: "Personal Details"),
            Divider(),
            PreferencesItem(icon: Icons.notifications, name: "Notifications"),
            Divider(),
            PreferencesItem(icon: Icons.brush, name: "Appearance"),
          ]),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "© CopyRight 2024 NovaCorp, LLC\nAll rights reserved.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              Container(height: 20),
              Text(
                "Report a bug",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "Terms of Use",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "Privacy Policy",
                style: TextStyle(color: Colors.white),
              ),
              Container(height: 20),
            ],
          )
        ],
      ),
    );
  }
}
