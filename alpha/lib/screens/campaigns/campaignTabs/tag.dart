import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  const Tag({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2,
        child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0), color: Colors.white),
            child: Text("Tech")));
  }
}
