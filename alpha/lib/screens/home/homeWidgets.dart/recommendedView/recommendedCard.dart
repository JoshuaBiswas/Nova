import 'package:alpha/screens/home/homeWidgets.dart/recommendedView/learnMoreButton.dart';
import 'package:alpha/shared/tagChip.dart';
import 'package:flutter/material.dart';

class RecommendedCard extends StatelessWidget {
  const RecommendedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 3 / 5,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                  image: AssetImage("assets/images/tech.jpg"),
                  fit: BoxFit.cover),
              gradient: LinearGradient(colors: [
                Colors.white.withOpacity(0.0),
                Colors.white.withOpacity(1.0),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ), // Adjust the radius as needed
                  ),
                  child: FractionallySizedBox(
                      widthFactor: 0.6,
                      child: FittedBox(
                        child: Text("Tech Elysium",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        fit: BoxFit.contain,
                      )),
                ),
              ),
              //spacing for image
              Flexible(flex: 3, fit: FlexFit.tight, child: Container()),
              //description
              Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                            "Step into a technological paradise, unveiling the latest advancements, trends, and marvels in the world of science and technology.")),
                  )),
              //deadline text
              Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                            style: TextStyle(fontSize: 20),
                            "Deadline: Feb 28")),
                  )),
              //buttons
              Flexible(
                flex: 3,
                fit: FlexFit.tight,
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ), // Adjust the radius as needed
                    ),
                    child: Column(children: [
                      //tags
                      SizedBox(
                          height: 40,
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 5.0,
                                  ),
                                  child: TagChip(text: "Tech"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    right: 5.0,
                                  ),
                                  child: TagChip(text: "Innovation"),
                                ),
                              ])),
                      //Big Learn More button
                      Flexible(
                          fit: FlexFit.tight,
                          child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: LearnMore())),
                    ])),
              )
            ],
          ),
        ));
  }
}
