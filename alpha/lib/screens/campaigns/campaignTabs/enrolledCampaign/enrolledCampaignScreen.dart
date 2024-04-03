import 'package:alpha/screens/campaigns/campaignTabs/enrolledCampaign/campaignTabWidgets/CampaignMaterials.dart';
import 'package:alpha/screens/campaigns/campaignTabs/enrolledCampaign/campaignTabWidgets/Contract.dart';
import 'package:alpha/screens/campaigns/campaignTabs/enrolledCampaign/campaignTabWidgets/Instructions.dart';
import 'package:alpha/screens/campaigns/campaignTabs/enrolledCampaign/statusBar.dart';
import 'package:alpha/screens/profile/profileScreenWidgets/pfp.dart';
import 'package:alpha/shared/tagChip.dart';
import 'package:flutter/material.dart';

class EnrolledCampaignScreen extends StatelessWidget {
  const EnrolledCampaignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 47, 47, 47),
        appBar: AppBar(
          toolbarHeight: 100,
          title: Text("Flavor Fiesta",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.white)),
          leading: BackButton(color: Colors.white),
          backgroundColor: Color.fromARGB(255, 47, 47, 47),
        ),
        body: ListView(children: [
          SizedBox(
              height: 150,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Expanded(flex: 2, child: Container(color: Colors.grey)),
                      Expanded(
                          child: Container(
                        color: Color.fromARGB(255, 47, 47, 47),
                      )),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.0),
                    alignment: Alignment(-0.6, 0.67),
                    height: 150,
                    width: 100,
                    child: Pfp(imageURL: "fiesta.png"),
                  ),
                ],
              )),
          Text("Flavor Fiesta",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          Text(
            "Green Co",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Container(height: 20),
          Text(
              "Look towards a sustainable future, highlighting initiatives and products contributing to a greener, more environmentally conscious world.",
              style: TextStyle(color: Colors.white)),
          Container(height: 20),
          Row(
            children: [
              TagChip(text: "Environment"),
              Container(width: 10),
              TagChip(text: "Renewable"),
              Container(width: 10),
              TagChip(text: "STEM"),
            ],
          ),
          Container(height: 20),
          Text("Status", style: TextStyle(color: Colors.white, fontSize: 20.0)),
          StatusBar(),
          DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  TabBar(
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.white,
                      tabs: [
                        Tab(
                          child: Text("Campaign"),
                        ),
                        Tab(
                          child: Text("Examples"),
                        ),
                        Tab(
                          child: Text("Tips"),
                        ),
                      ]),
                  SizedBox(
                      height: 300,
                      child: TabBarView(children: [
                        Center(
                            child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(height: 20),
                              Instructions(),
                              Container(height: 20),
                              CampaignMaterials(),
                              Container(height: 20),
                              Contract(),
                            ],
                          ),
                        )),
                        Placeholder(),
                        Placeholder(),
                      ]))
                ],
              ))
        ]));
  }
}
