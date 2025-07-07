import 'package:flutter/material.dart';

class MyGoogleBtn extends StatelessWidget {
  const MyGoogleBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFF636F85),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(
              "assets/images/google.png",
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "Login with Google",
            style: TextStyle(color: Color(0xFF636F85), fontSize: 16),
          ),
        ],
      ),
    );
  }
}
