import 'package:alpha/screenSize.dart';
import 'package:alpha/screens/home/homeWidgets.dart/tournamentView/tournamentCard.dart';
import 'package:flutter/material.dart';

class TournamementView extends StatelessWidget {
  const TournamementView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: ScreenSize.screenWidth * 0.15,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Get competitive",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white)),
          ),
        ),
        SizedBox(
          height: ScreenSize.screenWidth * 0.3,
          child: Text(
              style: TextStyle(color: Colors.white),
              "It’s time to show the world what you’re made of. Go head-to-head with other Nova Creatives to test your mettle."),
        ),
        SizedBox(
          height: ScreenSize.screenWidth * 1.25,
          child: Center(
            child: TournamentCard(),
          ),
        )
      ],
    );
  }
}
