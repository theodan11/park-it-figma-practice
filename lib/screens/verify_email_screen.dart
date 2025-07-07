import 'package:flutter/material.dart';
import 'package:park_it/components/my_text_header.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MyTextHeader(
          headerText: "Verify Email",
          myFontSize: 20,
        ),
        leading: IconButton(
          onPressed: () => {Navigator.of(context).pop()},
          icon: const Icon(Icons.arrow_back_sharp),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: double.infinity,
                ),
                Image.asset('assets/images/verify-email-01.png'),
                const SizedBox(
                  height: 6,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  child: const Text(
                    "An email with a verification code has been send to your email",
                    style: TextStyle(
                      color: Color(0xFF636F85),
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
