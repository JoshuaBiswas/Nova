import 'package:flutter/material.dart';

class StatusItem extends StatelessWidget {
  final bool completed;
  final String name;
  const StatusItem({required this.name, required this.completed, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 70,
        child: Column(
          children: [
            CircleAvatar(
                backgroundColor: completed ? Colors.grey : Colors.white,
                child: completed
                    ? Icon(Icons.check_circle_outline, color: Colors.white)
                    : null),
            Text(
              name,
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}
