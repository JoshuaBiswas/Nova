import 'package:alpha/screens/learn/video/videoScreenWidgets/timeStamp.dart';
import 'package:flutter/material.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 47, 47, 47),
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text("The Power of Persuasion",
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
            "Unlock the secrets of effective persuasion as we delve into proven techniques and strategies."),
        Container(height: 20),
        Expanded(
            child: ListView(
          children: [
            TimeStamp(time: "0:00", title: "Introduction", visited: true),
            Container(height: 10),
            TimeStamp(
                time: "1:33", title: "Paraverbal Communication", visited: true),
            Container(height: 10),
            TimeStamp(time: "2:47", title: "Nonverbal Signals", visited: true),
            Container(height: 10),
            TimeStamp(time: "4:01", title: "Mirroring", visited: true),
            Container(height: 10),
            TimeStamp(time: "6:12", title: "Eye Contact", visited: false),
            Container(height: 10),
            TimeStamp(time: "8:24", title: "Head-Nodding", visited: false),
            Container(height: 10),
            TimeStamp(time: "9:02", title: "Facial Expression", visited: false),
          ],
        )),
      ]),
    );
  }
}
