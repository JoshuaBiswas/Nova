import 'package:alpha/screens/home/homeWidgets.dart/enrolledView/enrolledCard.dart';
import 'package:flutter/material.dart';

class EnrolledView extends StatelessWidget {
  const EnrolledView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        child: Container(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: EnrolledCard()),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: EnrolledCard()),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: EnrolledCard()),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: EnrolledCard()),
            ],
          ),
        ));
  }
}
