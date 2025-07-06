import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color btnColor;
  final String btnText;
  final VoidCallback? onPressedFunc;
  const MyButton(
      {super.key,
      required this.btnColor,
      required this.btnText,
      required this.onPressedFunc});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressedFunc,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            color: btnColor,
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        alignment: const Alignment(0, 0),
        child: Text(
          btnText,
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
