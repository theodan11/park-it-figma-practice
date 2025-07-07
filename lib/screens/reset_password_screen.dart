import 'package:flutter/material.dart';
import 'package:park_it/components/my_button.dart';
import 'package:park_it/components/my_label_input_field.dart';
import 'package:park_it/components/my_text_header.dart';
import 'package:park_it/screens/verify_email_screen.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyTextHeader(
                headerText: "Reset Password",
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Enter the email associated with your account and we’ll send an email with instructions to reset your password.",
                style: TextStyle(
                  color: Color(0xFF4A5568),
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              const MyLabelInputField(
                labelText: "Email",
                myHintText: 'example@email.com',
              ),
              const SizedBox(
                height: 16,
              ),
              MyButton(
                  btnColor: Theme.of(context).colorScheme.primary,
                  btnText: "Get Verification Code",
                  onPressedFunc: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (builder) => const VerifyEmailScreen()));
                  })
            ],
          ),
        ),
      )),
    );
  }
}
