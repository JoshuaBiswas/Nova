import 'package:alpha/screenSize.dart';
import 'package:alpha/screens/home/walletView/walletCard.dart';
import 'package:flutter/material.dart';

class WalletView extends StatelessWidget {
  const WalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: ScreenSize.screenWidth * 0.15,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Your Balance",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white)),
          ),
        ),
        SizedBox(
          height: ScreenSize.screenWidth * 0.5,
          child: Center(
            child: WalletCard(),
          ),
        )
      ],
    );
  }
}
