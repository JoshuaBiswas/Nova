import 'package:flutter/material.dart';

class Contract extends StatelessWidget {
  const Contract({super.key});

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
                      child: Text("Contract"),
                    ),
                    Icon(Icons.list),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("Download Template\nUpload Signed"),
                ),
              ],
            )));
  }
}
