import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 7 / 4,
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
          child: Row(children: [
            Flexible(
              fit: FlexFit.tight,
              child: Column(children: [
                Text("Your Balance"),
                Text("\$500"),
                Text("2 days ago"),
              ]),
            ),
            Flexible(
                fit: FlexFit.tight,
                child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10.0))))),
          ])),
    );
  }
}
