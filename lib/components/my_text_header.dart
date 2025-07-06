import 'package:flutter/material.dart';

class MyTextHeader extends StatelessWidget {
  final String headerText;
  const MyTextHeader({super.key, required this.headerText});

  @override
  Widget build(BuildContext context) {
    return Text(
      headerText,
      style: const TextStyle(
        color: Color(0xFF2D2D2D),
        fontSize: 30,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
