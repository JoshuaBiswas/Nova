import 'package:flutter/material.dart';

class Instructions extends StatelessWidget {
  const Instructions({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5.0)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text("Instructions"),
                    ),
                    Icon(Icons.list),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      "One of the biggest values of the team is to improve Overwatch's individual and team focused gameplay to meet the needs of our core audience. When I look at the future of Overwatch, a year or two out, I don't see the exact same game that we're playing now, but with a few more heroes and maps added to it."),
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.grey),
                    height: 20,
                    width: 150,
                    child: Text("... MORE DETAILS")),
              ],
            )));
  }
}
