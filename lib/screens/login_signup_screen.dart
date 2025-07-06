import 'package:flutter/material.dart';
import 'package:park_it/components/my_button.dart';
import 'package:park_it/screens/login_screen.dart';

class LoginSignupScreen extends StatelessWidget {
  const LoginSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Image(
                  image: AssetImage('assets/images/Group.png'),
                ),
              ]),
              const SizedBox(
                height: 75,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    MyButton(
                      btnColor: Theme.of(context).colorScheme.primary,
                      btnText: "Log In",
                      onPressedFunc: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const LoginScreen(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    MyButton(
                        btnColor: const Color(0xFF2D2D2D),
                        btnText: "Sign Up",
                        onPressedFunc: () {}),
                    const SizedBox(
                      height: 32,
                    ),
                    const Text(
                      "By tapping “sign in”, you agree to our Terms & Conditions. See how we use your data in our Privacy Policy.",
                      style: TextStyle(
                        color: Color(0xFF636F85),
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
