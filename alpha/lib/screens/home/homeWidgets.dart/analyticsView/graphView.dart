import 'package:alpha/screenSize.dart';
import 'package:alpha/screens/home/homeWidgets.dart/analyticsView/moneyGraph.dart';
import 'package:flutter/material.dart';

class GraphView extends StatelessWidget {
  const GraphView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: ScreenSize.screenWidth * 0.15,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Analytics",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white)),
          ),
        ),
        Center(
            child: SizedBox(
                height: ScreenSize.screenWidth * 0.85,
                width: ScreenSize.screenWidth * 0.85,
                child: Container(
                  child: DefaultTabController(
                      length: 4,
                      child: Column(
                        children: [
                          Flexible(
                              flex: 1,
                              child: Container(
                                child: TabBar(tabs: [
                                  Tab(
                                    child: Container(color: Colors.white),
                                  ),
                                  Tab(
                                    child: Container(color: Colors.white),
                                  ),
                                  Tab(
                                    child: Container(color: Colors.white),
                                  ),
                                  Tab(
                                    child: Container(color: Colors.white),
                                  ),
                                ]),
                              )),
                          Flexible(
                              flex: 7,
                              child: Container(
                                color: Colors.white,
                                child: TabBarView(
                                  children: [
                                    MoneyGraph(),
                                    MoneyGraph(),
                                    MoneyGraph(),
                                    MoneyGraph(),
                                  ],
                                ),
                              )),
                        ],
                      )),
                )))
      ],
    );
  }
}
