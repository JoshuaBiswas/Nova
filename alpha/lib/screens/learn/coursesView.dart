import 'package:alpha/screens/learn/course/courseScreen.dart';
import 'package:alpha/screens/learn/videoBox.dart';
import 'package:alpha/shared/percentBar.dart';
import 'package:flutter/material.dart';

class CourseView extends StatelessWidget {
  const CourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("COURSES", style: TextStyle(color: Colors.white)),
        Text("CURRENT COURSE:", style: TextStyle(color: Colors.white)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CourseScreen()));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Basic Communication",
                  style: TextStyle(color: Colors.white)),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: PercentBar(percent: 67),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          child: Text(
              "You're a BEAST! Take your talent even further with this next video:",
              style: TextStyle(color: Colors.white, fontSize: 15)),
        ),
        Center(child: VideoBox()),
      ],
    );
  }
}
