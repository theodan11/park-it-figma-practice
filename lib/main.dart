import 'package:flutter/material.dart';
import 'package:park_it/screens/login_screen.dart';
import 'package:park_it/screens/reset_password_screen.dart';

import 'package:park_it/screens/splash_screen.dart';
import 'package:park_it/screens/verify_email_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Park It',
      theme: ThemeData(
          colorScheme: const ColorScheme.light(
              primary: Color(0xFFFA7E34),
              secondary: Color(0xFFFFCC56),
              tertiary: Color(0xFFFFFFFF))),
      home: const SplashScreen(),
      // home: const VerifyEmailScreen(),
    );
  }
}
