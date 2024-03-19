import 'package:alpha/screens/learn/coursesView.dart';
import 'package:alpha/screens/learn/quickVideosView.dart';
import 'package:flutter/material.dart';

class LearnScreen extends StatelessWidget {
  LearnScreen({super.key});
  final List<Widget> entries = [CourseView(), QuickVideosView()];
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
