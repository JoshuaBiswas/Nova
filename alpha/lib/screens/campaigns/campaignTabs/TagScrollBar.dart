import 'package:alpha/screens/campaigns/campaignTabs/tag.dart';
import 'package:flutter/material.dart';

class TagScrollBar extends StatelessWidget {
  const TagScrollBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          height: 50,
          width: 100,
          child: Padding(padding: EdgeInsets.all(5.0), child: Tag()),
        ),
        Container(
          height: 50,
          width: 100,
          child: Padding(padding: EdgeInsets.all(5.0), child: Tag()),
        ),
        Container(
          height: 50,
          width: 100,
          child: Padding(padding: EdgeInsets.all(5.0), child: Tag()),
        ),
        Container(
          height: 50,
          width: 100,
          child: Padding(padding: EdgeInsets.all(5.0), child: Tag()),
        ),
      ],
    );
  }
}
