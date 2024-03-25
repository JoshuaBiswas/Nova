import 'package:alpha/screens/home/homeWidgets.dart/tournamentView/countMeInButton.dart';
import 'package:flutter/material.dart';

class TournamentCard extends StatelessWidget {
  const TournamentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 3 / 5,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                  image: AssetImage("assets/images/tournament.jpeg"),
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
                        child: Text("NOVA TOURNAMENT",
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
                    color: Colors.white,
                    child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                            "Have you got what it takes? Face off against creatives from every genre, as you sharpen your skills to make it to the top.")),
                  )),
              Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                            style: TextStyle(fontSize: 20),
                            "Deadline: Feb 28")),
                  )),
              Flexible(
                flex: 3,
                fit: FlexFit.tight,
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ), // Adjust the radius as needed
                    ),
                    child: Column(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(child: CountMeInButton())),
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(child: Text("Learn More"))),
                    ])),
              )
            ],
          ),
        ));
  }
}
