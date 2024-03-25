import 'package:alpha/screens/home/walletView/walletCard.dart';
import 'package:flutter/material.dart';

class WalletView extends StatelessWidget {
  const WalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: WalletCard()));
  }
}
