import 'package:flutter/material.dart';

class MyLabelInputField extends StatelessWidget {
  final bool isObscure;
  final String labelText;
  final String myHintText;
  const MyLabelInputField(
      {super.key,
      this.isObscure = false,
      required this.labelText,
      required this.myHintText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: const TextStyle(color: Color(0xFF2D2D2D), fontSize: 18),
          ),
          const SizedBox(
            height: 6,
          ),
          TextField(
            obscureText: isObscure,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(16),
              hintText: myHintText,
              hintStyle: const TextStyle(
                color: Color(0xFF636F85),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF2D2D2D),
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF2D2D2D),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
