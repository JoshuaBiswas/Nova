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
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
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
              Expanded(
                  flex: 3,
                  child: FittedBox(
                      fit: BoxFit.fill,
                      child: Image(
                        image: AssetImage("assets/images/images.jpg"),
                      ))),
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                            "Have you got what it takes? Face off against creatives from every genre, as you sharpen your skills to make it to the top.")),
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                            style: TextStyle(fontSize: 20),
                            "Deadline: Feb 28")),
                  )),
              Expanded(
                flex: 3,
                child: Container(
                    decoration: BoxDecoration(
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
                          child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.0),
                              child: Container(child: Text("Learn More")))),
                    ])),
              )
            ],
          ),
        ));
  }
}
