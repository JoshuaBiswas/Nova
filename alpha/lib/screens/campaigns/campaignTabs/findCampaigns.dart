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
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 10.0),
            child: Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.start,
                spacing: 20.0,
                runSpacing: 20.0,
                children: [
                  SizedBox(
                    height: 500,
                    width: 300,
                    child: RecommendedCard(),
                  ),
                  SizedBox(
                    height: 500,
                    width: 300,
                    child: RecommendedCard(),
                  ),
                  SizedBox(
                    height: 500,
                    width: 300,
                    child: RecommendedCard(),
                  )
                ]),
          ),
        ),
      ],
    );
  }
}
