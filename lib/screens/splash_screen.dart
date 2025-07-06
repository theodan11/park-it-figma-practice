import 'package:flutter/material.dart';
import 'package:park_it/screens/login_signup_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const LoginSignupScreen()));
          },
          child: Container(
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.secondary,
              ],
            )),
            child: SizedBox(
              width: 418,
              height: 418,
              child: Image.asset("assets/images/park_it_img.png", scale: 1.0),
            ),
          ),
        ),
        // child: const Text("hello"),
      )),
    );
  }
}
