import 'package:alpha/screens/campaigns/campaignTabs/findCampaigns.dart';
import 'package:alpha/screens/campaigns/campaignTabs/myCampaigns.dart';
import 'package:alpha/screens/home/homeWidgets.dart/enrolledView/enrolledCard.dart';
import 'package:alpha/screens/home/homeWidgets.dart/recommendedView/recommendedCard.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  final List<Widget> entries = [
    EnrolledCard(),
    EnrolledCard(),
    RecommendedCard(),
    RecommendedCard(),
    RecommendedCard(),
    RecommendedCard()
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                tabs: [
                  Tab(
                    child: Text("My Campaigns"),
                  ),
                  Tab(
                    child: Text("Find Campaigns"),
                  ),
                ]),
            Flexible(
                child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [MyCampaigns(), FindCampaigns()]))
          ],
        ));
  }
}
