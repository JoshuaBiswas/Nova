import 'package:alpha/screens/learn/videoBox.dart';
import 'package:flutter/material.dart';

class QuickVideosView extends StatelessWidget {
  const QuickVideosView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("QUICK VIDEOS", style: TextStyle(color: Colors.white)),
        Text(
            "Watch short videos produced by the Nova team that are made to help you succeed on your creative journey.",
            style: TextStyle(color: Colors.white)),
        SingleChildScrollView(
          padding: EdgeInsets.only(top: 10.0),
          child: Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.start,
              spacing: 20.0,
              runSpacing: 20.0,
              children: [
                VideoBox(),
                VideoBox(),
                VideoBox(),
              ]),
        ),
      ],
    );
  }
}
