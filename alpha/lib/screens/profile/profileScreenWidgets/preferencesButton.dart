import 'package:alpha/screens/profile/preferences/preferencesScreen.dart';
import 'package:flutter/material.dart';

class PreferencesButton extends StatelessWidget {
  const PreferencesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => PreferencesScreen()));
        },
        child: Container(
            alignment: Alignment.center,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Color.fromARGB(255, 220, 220, 220),
            ),
            child: Text("Preferences",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))));
  }
}
