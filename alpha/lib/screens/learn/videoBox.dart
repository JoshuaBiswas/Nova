import 'package:flutter/material.dart';

class VideoBox extends StatelessWidget {
  const VideoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/youtube.png")),
              color: Colors.white),
          child: Column(
            children: [
              Flexible(fit: FlexFit.tight, child: Container()),
              Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Text("The Power of Persuasion"),
                          Text(
                              "Unlock the secrets of effective persuasion as we delve into proven techniques and strategies.")
                        ],
                      )))
            ],
          ),
        ));
  }
}
