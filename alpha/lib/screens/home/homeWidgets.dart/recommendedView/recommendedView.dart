import 'package:alpha/screens/home/homeWidgets.dart/recommendedView/recommendedCard.dart';
import 'package:flutter/material.dart';

class RecommendedView extends StatelessWidget {
  const RecommendedView({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller =
        PageController(initialPage: 0, viewportFraction: 0.9);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Recommended Campaigns",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white)),
        ),
        SizedBox(
          height: 500,
          child: PageView(
            controller: controller,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                child: Center(
                  child: RecommendedCard(),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                child: Center(
                  child: RecommendedCard(),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                child: Center(
                  child: RecommendedCard(),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
