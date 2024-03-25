import 'package:alpha/screens/learn/thumbnailOverlay.dart';
import 'package:alpha/screens/learn/video/videoScreen.dart';
import 'package:flutter/material.dart';

class VideoBox extends StatelessWidget {
  const VideoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => VideoScreen()));
        },
        child: SizedBox(
            height: 350,
            width: 350,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/youtube.png")),
                  color: Colors.white),
              child: Column(
                children: [
                  Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.only(left: 10, bottom: 10),
                        child: ThumbnailOverlay(),
                        alignment: Alignment.bottomLeft,
                      )),
                  Expanded(
                      flex: 2,
                      child: Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Expanded(
                                  child: Padding(
                                      padding: EdgeInsets.only(top: 10.0),
                                      child: Text("The Power of Persuasion",
                                          style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold,
                                          )))),
                              Expanded(
                                  flex: 3,
                                  child: Container(
                                      child: Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: Text(
                                              "Unlock the secrets of effective persuasion as we delve into proven techniques and strategies.",
                                              style: TextStyle(fontSize: 14)))))
                            ],
                          )))
                ],
              ),
            )));
  }
}
