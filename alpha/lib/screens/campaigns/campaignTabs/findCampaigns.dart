import 'package:alpha/screens/campaigns/campaignTabs/TagScrollBar.dart';
import 'package:alpha/screens/home/homeWidgets.dart/recommendedView/recommendedCard.dart';
import 'package:flutter/material.dart';

class FindCampaigns extends StatelessWidget {
  const FindCampaigns({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(child: TextField()),
        Flexible(
          child: TagScrollBar(),
        ),
        Divider(),
        Flexible(
            flex: 10,
            child: ListView(
              children: [
                Center(
                    child: Padding(
                  padding: EdgeInsets.all(30.0),
                  child: RecommendedCard(),
                )),
                Center(
                    child: Padding(
                  padding: EdgeInsets.all(30.0),
                  child: RecommendedCard(),
                )),
                Center(
                    child: Padding(
                  padding: EdgeInsets.all(30.0),
                  child: RecommendedCard(),
                )),
              ],
            )),
      ],
    );
  }
}
