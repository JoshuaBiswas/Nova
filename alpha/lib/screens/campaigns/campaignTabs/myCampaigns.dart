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
            TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                tabs: [
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
              ],
            ))
          ],
        ));
  }
}
