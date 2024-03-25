import 'package:alpha/shared/tagChip.dart';
import 'package:flutter/material.dart';

class TagScrollBar extends StatelessWidget {
  const TagScrollBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 40,
        child: ListView(scrollDirection: Axis.horizontal, children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 5.0,
            ),
            child: TagChip(text: "Tech"),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 5.0,
            ),
            child: TagChip(text: "Innovation"),
          ),
        ]));
  }
}
