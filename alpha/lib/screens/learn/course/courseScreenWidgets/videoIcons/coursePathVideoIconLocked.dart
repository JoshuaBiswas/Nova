import 'package:flutter/material.dart';

class CoursePathVideoIconLocked extends StatelessWidget {
  const CoursePathVideoIconLocked({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width: 50,
        child: Container(
            child: Icon(Icons.lock, color: Colors.white),
            color: Color.fromARGB(255, 194, 194, 194)));
  }
}
