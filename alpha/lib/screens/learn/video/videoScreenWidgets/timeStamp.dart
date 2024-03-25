import 'package:flutter/material.dart';

class TimeStamp extends StatelessWidget {
  final String time;
  final String title;
  final bool visited;
  const TimeStamp(
      {required this.time,
      required this.title,
      required this.visited,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            height: 20,
            width: 40,
            child: Container(
                color: this.visited ? Colors.grey : Colors.green,
                child: Text(time, style: TextStyle(color: Colors.white)))),
        Container(width: 10),
        Text(title, style: TextStyle(color: Colors.white)),
      ],
    );
  }
}
