import 'package:flutter/material.dart';

class Instructions extends StatelessWidget {
  const Instructions({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Instructions"),
                    Icon(Icons.list),
                  ],
                ),
                Text(
                    "One of the biggest values of the team is to improve Overwatch's individual and team focused gameplay to meet the needs of our core audience. When I look at the future of Overwatch, a year or two out, I don't see the exact same game that we're playing now, but with a few more heroes and maps added to it."),
                Container(
                    color: Colors.grey,
                    height: 20,
                    width: 150,
                    child: Text("... MORE DETAILS")),
              ],
            )));
  }
}
