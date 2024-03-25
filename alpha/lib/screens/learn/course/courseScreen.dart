import 'package:alpha/screens/learn/course/courseScreenWidgets/coursePath.dart';
import 'package:alpha/shared/percentBar.dart';
import 'package:flutter/material.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 47, 47, 47),
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text("Basic Communication",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.white)),
        leading: BackButton(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 47, 47, 47),
      ),
      body: Column(children: [
        Text(
            style: TextStyle(color: Colors.white),
            "As a creator, there's more to communciation than just speaking with the camera on! Discover how to communicate messages effectively with this Nova-designed course made just for you"),
        Text("COURSE PROGRESS:", style: TextStyle(color: Colors.white)),
        PercentBar(percent: 67),
        Expanded(child: CoursePath()),
      ]),
    );
  }
}
