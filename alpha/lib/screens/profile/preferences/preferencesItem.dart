import 'package:flutter/material.dart';

class PreferencesItem extends StatelessWidget {
  final IconData icon;
  final String name;
  const PreferencesItem({required this.icon, required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.white),
        Container(width: 20),
        Text(name, style: TextStyle(color: Colors.white))
      ],
    );
  }
}
