import 'package:flutter/material.dart';
import 'package:tech387/auth/login_page.dart';
import 'package:tech387/user/screen_user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignIn(),
    );
  }
}