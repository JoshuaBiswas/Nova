import 'package:flutter/material.dart';

class PercentBar extends StatelessWidget {
  final int percent;
  const PercentBar({required this.percent, super.key});

  @override
  Widget build(BuildContext context) {
    if (percent < 15) {
      return Container(
          height: 50,
          child: Row(
            children: [
              Expanded(flex: percent, child: Container(color: Colors.black)),
              Expanded(
                  flex: 100 - percent,
                  child: Container(
                      color: Colors.white,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text(percent.toString() + "%",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)))))),
            ],
          ));
    } else {
      return Container(
          height: 50,
          child: Row(
            children: [
              Expanded(
                  flex: percent,
                  child: Container(
                      color: Colors.black,
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: Text(percent.toString() + "%",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold)),
                          )))),
              Expanded(
                  flex: 100 - percent,
                  child: Container(
                    color: Colors.white,
                  )),
            ],
          ));
    }
  }
}
