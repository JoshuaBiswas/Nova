import 'package:alpha/screens/campaigns/campaignTabs/enrolledCampaign/enrolledCampaignScreen.dart';
import 'package:flutter/material.dart';

class EnrolledCard extends StatelessWidget {
  const EnrolledCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => EnrolledCampaignScreen()));
        },
        child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                      image: AssetImage("assets/images/fiesta.png"),
                      fit: BoxFit.cover),
                  gradient: LinearGradient(colors: [
                    Colors.white.withOpacity(0.0),
                    Colors.white.withOpacity(1.0),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ), // Adjust the radius as needed
                      ),
                      child: FractionallySizedBox(
                          widthFactor: 0.6,
                          child: FittedBox(
                            child: Text("Flavor Fiesta",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            fit: BoxFit.contain,
                          )),
                    ),
                  ),
                  Flexible(flex: 3, fit: FlexFit.tight, child: Container()),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ), // Adjust the radius as needed
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Due Date:"),
                                  Text("Feb 17, 2024"),
                                ],
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Column(
                                children: [
                                  Flexible(flex: 1, child: Container()),
                                  Flexible(
                                      flex: 3,
                                      fit: FlexFit.tight,
                                      child: FractionallySizedBox(
                                          heightFactor: 0.8,
                                          widthFactor: 0.7,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(7.0))),
                                            alignment: Alignment.center,
                                            child: Text("In Progress"),
                                          ))),
                                  Flexible(
                                      flex: 3,
                                      fit: FlexFit.tight,
                                      child: FractionallySizedBox(
                                          heightFactor: 0.8,
                                          widthFactor: 0.7,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(7.0))),
                                            alignment: Alignment.center,
                                            child: Text("\$87"),
                                          ))),
                                  Flexible(flex: 1, child: Container()),
                                ],
                              ),
                            ),
                          ],
                        )),
                  )
                ],
              ),
            )));
  }
}
