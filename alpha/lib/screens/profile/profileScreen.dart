import 'package:alpha/screens/home/homeWidgets.dart/enrolledView/enrolledCard.dart';
import 'package:alpha/screens/home/walletView/walletCard.dart';
import 'package:alpha/screens/profile/profileScreenWidgets/pfp.dart';
import 'package:alpha/screens/profile/profileScreenWidgets/preferencesButton.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
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
                child: Pfp(),
              ),
            ],
          )),
      Text(
          "Foodie, traveler, and all around chill human. I make vlogs about the best food I can find for Instagram and Youtube!",
          style: TextStyle(color: Colors.white)),
      Container(height: 20),
      PreferencesButton(),
      Container(height: 20),
      WalletCard(),
      Container(height: 20),
      Center(
        child: Text("Completed Campaigns",
            style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold)),
      ),
      Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 10.0),
          child: Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.start,
              spacing: 20.0,
              runSpacing: 20.0,
              children: [
                SizedBox(
                  height: 300,
                  width: 300,
                  child: EnrolledCard(),
                ),
                SizedBox(
                  height: 300,
                  width: 300,
                  child: EnrolledCard(),
                ),
                SizedBox(
                  height: 300,
                  width: 300,
                  child: EnrolledCard(),
                )
              ]),
        ),
      ),
    ]);
  }
}
