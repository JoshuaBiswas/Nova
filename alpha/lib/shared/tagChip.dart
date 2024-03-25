import 'package:flutter/material.dart';

class TagChip extends StatelessWidget {
  final String text;
  const TagChip({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(padding: EdgeInsets.all(10.0), child: Text(text)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Color.fromARGB(255, 215, 215, 215)));
  }
}
