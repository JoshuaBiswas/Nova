import 'package:alpha/screens/home/homeWidgets.dart/analyticsView/moneyGraph.dart';
import 'package:flutter/material.dart';

class GraphView extends StatelessWidget {
  const GraphView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: DefaultTabController(
          length: 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                  flex: 1,
                  child: Container(
                    child: TabBar(
                        labelPadding: EdgeInsets.zero,
                        tabAlignment: TabAlignment.fill,
                        tabs: [
                          Tab(
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: FractionallySizedBox(
                                    widthFactor: 0.85,
                                    child: Container(
                                      child: Center(child: Icon(Icons.tiktok)),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(5.0),
                                              topRight: Radius.circular(5.0))),
                                      width: 100,
                                    ),
                                  ))),
                          Tab(
                              child: Align(
                                  alignment: Alignment(-0.33, 0.0),
                                  child: FractionallySizedBox(
                                    widthFactor: 0.85,
                                    child: Container(
                                      child:
                                          Center(child: Icon(Icons.facebook)),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(5.0),
                                              topRight: Radius.circular(5.0))),
                                      width: 100,
                                    ),
                                  ))),
                          Tab(
                              child: Align(
                                  alignment: Alignment(0.33, 0.0),
                                  child: FractionallySizedBox(
                                    widthFactor: 0.85,
                                    child: Container(
                                      child: Center(child: Icon(Icons.shield)),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(5.0),
                                              topRight: Radius.circular(5.0))),
                                      width: 100,
                                    ),
                                  ))),
                          Tab(
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: FractionallySizedBox(
                                    widthFactor: 0.85,
                                    child: Container(
                                      child: Center(
                                          child:
                                              Icon(Icons.video_library_sharp)),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(5.0),
                                              topRight: Radius.circular(5.0))),
                                      width: 100,
                                    ),
                                  ))),
                        ]),
                  )),
              Flexible(
                  flex: 4,
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
    );
  }
}
