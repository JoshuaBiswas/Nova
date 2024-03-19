import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.all(5.0), child: Text("Change Theme")),
        Padding(padding: EdgeInsets.all(5.0), child: Text("Change Language")),
        Padding(
            padding: EdgeInsets.all(5.0),
            child: Text("More Usability Settings")),
        Divider(),
        Padding(padding: EdgeInsets.all(5.0), child: Text("Sign Out")),
        Divider(),
        Padding(
            padding: EdgeInsets.all(5.0),
            child: Text("Delete Account", style: TextStyle(color: Colors.red))),
      ],
    );
  }
}
