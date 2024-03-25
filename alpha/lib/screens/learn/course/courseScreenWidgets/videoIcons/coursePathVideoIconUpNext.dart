import 'package:flutter/material.dart';

class CoursePathVideoIconUpNext extends StatelessWidget {
  const CoursePathVideoIconUpNext({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width: 50,
        child: Container(
            child: Icon(Icons.play_arrow, color: Colors.white),
            color: Colors.green));
  }
}
