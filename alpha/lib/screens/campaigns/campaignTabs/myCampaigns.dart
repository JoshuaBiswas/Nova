import 'package:alpha/screens/home/homeWidgets.dart/enrolledView/enrolledCard.dart';
import 'package:flutter/material.dart';

class MyCampaigns extends StatelessWidget {
  const MyCampaigns({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(tabs: [
              Tab(
                child: Text("Active"),
              ),
              Tab(
                child: Text("Completed"),
              ),
              Tab(
                child: Text("Other"),
              ),
            ]),
            Flexible(
                child: TabBarView(
              children: [
                ListView(children: [
                  Center(
                      child: Padding(
                    padding: EdgeInsets.all(30.0),
                    child: EnrolledCard(),
                  )),
                  Center(
                      child: Padding(
                    padding: EdgeInsets.all(30.0),
                    child: EnrolledCard(),
                  )),
                  Center(
                      child: Padding(
                    padding: EdgeInsets.all(30.0),
                    child: EnrolledCard(),
                  )),
                ]),
                ListView(children: [
                  Center(
                      child: Padding(
                    padding: EdgeInsets.all(30.0),
                    child: EnrolledCard(),
                  )),
                  Center(
                      child: Padding(
                    padding: EdgeInsets.all(30.0),
                    child: EnrolledCard(),
                  )),
                  Center(
                      child: Padding(
                    padding: EdgeInsets.all(30.0),
                    child: EnrolledCard(),
                  )),
                ]),
                ListView(children: [
                  Center(
                      child: Padding(
                    padding: EdgeInsets.all(30.0),
                    child: EnrolledCard(),
                  )),
                  Center(
                      child: Padding(
                    padding: EdgeInsets.all(30.0),
                    child: EnrolledCard(),
                  )),
                  Center(
                      child: Padding(
                    padding: EdgeInsets.all(30.0),
                    child: EnrolledCard(),
                  )),
                ]),
              ],
            ))
          ],
        ));
  }
}
