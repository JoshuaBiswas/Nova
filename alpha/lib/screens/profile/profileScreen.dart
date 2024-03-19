import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SizedBox(
                child: Image.asset("assets/images/profile.png"),
                height: 100,
                width: 100,
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0), child: Text("Joshua Biswas")),
            Padding(padding: EdgeInsets.all(5.0), child: Text("About Me: ")),
            Padding(
                padding: EdgeInsets.all(1.0),
                child: Text(
                    "I am an influencer that likes to influence because influencing is so fun. Help me be better at influencing.")),
          ],
        ),
        Divider(),
        Divider(),
        Divider(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.all(5.0), child: Text("Change Theme")),
            Padding(
                padding: EdgeInsets.all(5.0), child: Text("Change Language")),
            Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("More Usability Settings")),
            Divider(),
            Padding(padding: EdgeInsets.all(5.0), child: Text("Sign Out")),
            Divider(),
            Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("Delete Account",
                    style: TextStyle(color: Colors.red))),
          ],
        )
      ],
    );
  }
}
