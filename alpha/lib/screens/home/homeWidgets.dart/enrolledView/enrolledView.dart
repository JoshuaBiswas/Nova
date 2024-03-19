import 'package:alpha/screenSize.dart';
import 'package:alpha/screens/home/homeWidgets.dart/enrolledView/enrolledCard.dart';
import 'package:flutter/material.dart';

class EnrolledView extends StatelessWidget {
  const EnrolledView({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller =
        PageController(initialPage: 0, viewportFraction: 0.8);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: ScreenSize.screenWidth * 0.15,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Enrolled Campaigns",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white)),
          ),
        ),
        SizedBox(
            height: ScreenSize.screenWidth * 0.85,
            child: Container(
              child: PageView(
                controller: controller,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Center(
                      child: EnrolledCard(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Center(
                      child: EnrolledCard(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Center(
                      child: EnrolledCard(),
                    ),
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
