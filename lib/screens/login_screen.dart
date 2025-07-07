import 'package:flutter/material.dart';
import 'package:park_it/components/my_button.dart';
import 'package:park_it/components/my_google_btn.dart';
import 'package:park_it/components/my_label_input_field.dart';
import 'package:park_it/components/my_text_header.dart';
import 'package:park_it/screens/reset_password_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Column(
            children: [
              const SizedBox(
                width: double.infinity,
                height: 6,
              ),
              const Image(
                image: AssetImage(
                  'assets/images/park_it_logo.png',
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              const MyTextHeader(
                headerText: "Log In",
              ),
              const SizedBox(
                height: 26,
              ),
              const MyLabelInputField(
                labelText: "Phone/Email",
                myHintText: "Enter your phone",
              ),
              const SizedBox(
                height: 16,
              ),
              const MyLabelInputField(
                labelText: "Password",
                myHintText: "Enter your password",
                isObscure: true,
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => const ResetPassword()));
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 14),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              MyButton(
                btnColor: Theme.of(context).colorScheme.primary,
                btnText: "Log In",
                onPressedFunc: () {},
              ),
              const SizedBox(
                height: 16,
              ),
              const Center(
                child: Text(
                  "Or Log in with",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const MyGoogleBtn(),
              const SizedBox(
                height: 98,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don’t have an account ? ",
                    style: TextStyle(color: Color(0xFF4A5568), fontSize: 14),
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 14),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
