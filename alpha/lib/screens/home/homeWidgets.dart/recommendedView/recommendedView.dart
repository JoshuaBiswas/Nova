import 'package:alpha/screens/home/homeWidgets.dart/recommendedView/recommendedCard.dart';
import 'package:flutter/material.dart';

class RecommendedView extends StatelessWidget {
  const RecommendedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Text("Recommended for you",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.white)),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
              "Since you succeeded with the Microsoft Hololens campaign:",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                  color: Colors.white)),
        ),
        SizedBox(
            height: 500,
            child: Container(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: RecommendedCard()),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: RecommendedCard()),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: RecommendedCard()),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: RecommendedCard()),
                ],
              ),
            ))
      ],
    );
  }
}
