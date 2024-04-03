import 'package:flutter/material.dart';

class CampaignMaterials extends StatelessWidget {
  const CampaignMaterials({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
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
                      child: Text("Materials"),
                    ),
                    Icon(Icons.list),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(Icons.arrow_downward),
                ),
              ],
            )));
  }
}
