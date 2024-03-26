import 'package:flutter/material.dart';

class Pfp extends StatelessWidget {
  const Pfp({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 50.0, backgroundImage: AssetImage('assets/images/profile.png'));
  }
}
