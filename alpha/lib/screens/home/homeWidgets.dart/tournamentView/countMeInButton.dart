import 'package:flutter/material.dart';

class CountMeInButton extends StatelessWidget {
  const CountMeInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 3,
        child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), color: Colors.black),
            child: Text("Count Me In", style: TextStyle(color: Colors.white))));
  }
}
