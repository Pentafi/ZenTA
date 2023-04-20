import 'package:flutter/material.dart';
import 'constant.dart';
import 'homepage.dart';
import 'login/log.dart';
// import 'login.dart';

void main() {
  runApp(const LoginUI());
}

class LoginUI extends StatefulWidget {
  const LoginUI({super.key});

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ZenTA",
      home: Scaffold(
        backgroundColor: tWhite,
        body: const Login(),
      ),
    );
  }
}
