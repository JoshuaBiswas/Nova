import 'package:alpha/screens/learn/videoBox.dart';
import 'package:flutter/material.dart';

class QuickVideosView extends StatelessWidget {
  const QuickVideosView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("QUICK VIDEOS"),
        Text(
            "Watch short videos produced by the Nova team that are made to help you succeed on your creative journey."),
        Center(
          child: VideoBox(),
        ),
        Center(
          child: VideoBox(),
        ),
      ],
    );
  }
}
