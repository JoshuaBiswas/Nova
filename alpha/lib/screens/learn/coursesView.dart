import 'package:alpha/screens/learn/videoBox.dart';
import 'package:flutter/material.dart';

class CourseView extends StatelessWidget {
  const CourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("COURSES"),
        Text("CURRENT COURSE:"),
        Container(
            child: Column(
          children: [
            Text("Basic Communication"),
            Container(height: 50, color: Colors.red),
          ],
        )),
        Text(
            "You're a BEAST! Take your talent even further with this next video:"),
        Center(child: VideoBox()),
      ],
    );
  }
}
