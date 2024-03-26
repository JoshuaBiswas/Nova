import 'package:alpha/screens/home/homeWidgets.dart/recommendedView/learnMoreButton.dart';
import 'package:alpha/shared/percentBar.dart';
import 'package:alpha/shared/tagChip.dart';
import 'package:flutter/material.dart';

class RecommendedCampaignScreen extends StatelessWidget {
  const RecommendedCampaignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            toolbarHeight: 100,
            title: Text("Tech Elysium",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                )),
            leading: BackButton(),
            backgroundColor: Colors.white),
        body:
            ListView(padding: EdgeInsets.symmetric(horizontal: 40), children: [
          Text("Tech Elysium",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          Container(height: 20),
          Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/tech.jpg")))),
          Container(height: 20),
          Text(
              "Step into a technological paradise, unveiling the latest advancements, trends, and marvels in the world of science and technology."),
          Container(height: 20),
          Text("Open", style: TextStyle(color: Colors.grey, fontSize: 20)),
          Text("27 of 100 slots remaining"),
          PercentBar(percent: 27),
          Container(height: 20),
          Text("Deadline: Feb 28"),
          Row(
            children: [TagChip(text: "Tech"), TagChip(text: "Innovation")],
          ),
          Container(height: 20),
          Text("TODAY'S TALENT",
              style: TextStyle(fontSize: 20, color: Colors.grey)),
          Text("TOMORROW'S TECH", style: TextStyle(fontSize: 20)),
          Container(height: 10),
          Text(
              "Put an attractive-sounding description of the campaign here. Usually, this one will go on for a couple paragraphs or so. Therefore, it will be truncated with a button allowing the user to see more, as you will be demonstrated, or they can simply choose to join the campaign. On other campaigns, it will be via appli ...more"),
          Container(height: 20),
          LearnMore(),
        ]));
  }
}
