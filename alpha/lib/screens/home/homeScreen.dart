import 'package:alpha/screens/home/homeWidgets.dart/enrolledView/enrolledView.dart';
import 'package:alpha/screens/home/homeWidgets.dart/analyticsView/graphView.dart';
import 'package:alpha/screens/home/homeWidgets.dart/recommendedView/recommendedView.dart';
import 'package:alpha/screens/home/homeWidgets.dart/tournamentView/tournamentView.dart';
import 'package:alpha/screens/home/walletView/walletView.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<Widget> entries = [
    EnrolledView(),
    WalletView(),
    GraphView(),
    RecommendedView(),
    TournamementView()
  ];
  final List<int> colorCodes = <int>[300, 200, 100];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(0),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return entries[index];
      },
      separatorBuilder: (BuildContext context, int index) =>
          const Divider(color: Colors.black),
    );
  }
}
