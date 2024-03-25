import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/widgets.dart';

class MoneyGraph extends StatelessWidget {
  const MoneyGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
          flex: 3,
          child: LineChart(
            LineChartData(
                gridData: FlGridData(show: true),
                titlesData: FlTitlesData(show: true),
                borderData: FlBorderData(show: true),
                minX: 0,
                maxX: 7,
                minY: 0,
                maxY: 6,
                lineBarsData: [
                  LineChartBarData(spots: [
                    FlSpot(0, 3),
                    FlSpot(1, 1),
                    FlSpot(2, 4),
                    FlSpot(3, 3.5),
                    FlSpot(4, 2.5),
                    FlSpot(5, 4),
                    FlSpot(6, 5),
                  ])
                ]),
          )),
      Expanded(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: FractionallySizedBox(
                widthFactor: 0.9,
                heightFactor: 0.5,
                child: DropdownMenu(
                  expandedInsets: EdgeInsets.zero,
                  dropdownMenuEntries: [
                    DropdownMenuEntry(value: 42, label: "Cat")
                  ],
                )),
          ),
          Expanded(
            child: FractionallySizedBox(
                widthFactor: 0.9,
                heightFactor: 0.5,
                child: DropdownMenu(
                  expandedInsets: EdgeInsets.zero,
                  dropdownMenuEntries: [
                    DropdownMenuEntry(value: 42, label: "Cat")
                  ],
                )),
          ),
        ],
      ))
    ]);
  }
}
