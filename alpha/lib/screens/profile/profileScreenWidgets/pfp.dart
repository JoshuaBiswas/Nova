import 'package:flutter/material.dart';

class Pfp extends StatelessWidget {
  final String imageURL;
  const Pfp({required this.imageURL, super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 50.0, backgroundImage: AssetImage('assets/images/' + imageURL));
  }
}
