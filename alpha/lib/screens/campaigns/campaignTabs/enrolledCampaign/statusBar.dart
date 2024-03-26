import 'package:alpha/screens/campaigns/campaignTabs/enrolledCampaign/statusItem.dart';
import 'package:flutter/material.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment(0.0, -0.7),
              child: Divider(
                thickness: 4.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                StatusItem(name: "Campaign Accepted", completed: true),
                StatusItem(name: "Contract Signed", completed: true),
                StatusItem(name: "Video Posted", completed: false),
                StatusItem(name: "Video Approved", completed: false),
                StatusItem(name: "Payment Sent", completed: false),
              ],
            )
          ],
        ));
  }
}
