import 'package:alpha/screens/learn/course/courseScreenWidgets/videoIcons/coursePathVideoIcon.dart';
import 'package:alpha/screens/learn/course/courseScreenWidgets/videoIcons/coursePathVideoIconLocked.dart';
import 'package:alpha/screens/learn/course/courseScreenWidgets/videoIcons/coursePathVideoIconUpNext.dart';
import 'package:alpha/screens/learn/video/videoScreen.dart';
import 'package:flutter/material.dart';

class CoursePath extends StatelessWidget {
  const CoursePath({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(height: 20),
        Align(
          child: CoursePathVideoIcon(),
          alignment: Alignment(-0.2, 0),
        ),
        Container(height: 20),
        Align(
          child: CoursePathVideoIcon(),
          alignment: Alignment(-0.0, 0),
        ),
        Container(height: 20),
        Align(
          child: CoursePathVideoIcon(),
          alignment: Alignment(0.2, 0),
        ),
        Container(height: 20),
        Align(
          child: CoursePathVideoIcon(),
          alignment: Alignment(0.4, 0),
        ),
        Container(height: 20),
        Align(
          child: CoursePathVideoIcon(),
          alignment: Alignment(0.2, 0),
        ),
        Container(height: 20),
        Center(
          child: Text("UP NEXT", style: TextStyle(color: Colors.white)),
        ),
        GestureDetector(
          onTap: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => VideoScreen()))
          },
          child: Align(
            child: CoursePathVideoIconUpNext(),
            alignment: Alignment(-0.0, 0),
          ),
        ),
        Center(
          child: Text("The Power of Persuasion",
              style: TextStyle(color: Colors.green)),
        ),
        Container(height: 20),
        Align(
          child: CoursePathVideoIconLocked(),
          alignment: Alignment(-0.3, 0),
        ),
        Container(height: 20),
        Align(
          child: CoursePathVideoIconLocked(),
          alignment: Alignment(-0.1, 0),
        ),
        Container(height: 20),
        Align(
          child: CoursePathVideoIconLocked(),
          alignment: Alignment(0.1, 0),
        ),
        Container(height: 20),
        Align(
          child: CoursePathVideoIconLocked(),
          alignment: Alignment(0.3, 0),
        ),
      ],
    );
  }
}
