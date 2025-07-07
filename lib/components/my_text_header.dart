import 'package:flutter/material.dart';

class MyTextHeader extends StatelessWidget {
  final String headerText;
  final Color? textColor;
  final double myFontSize;
  const MyTextHeader(
      {super.key,
      required this.headerText,
      this.textColor,
      this.myFontSize = 30});

  @override
  Widget build(BuildContext context) {
    return Text(
      headerText,
      style: TextStyle(
        color: textColor ?? const Color(0xFF2D2D2D),
        fontSize: myFontSize,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
