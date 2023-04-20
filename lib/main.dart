import 'package:flutter/material.dart';
import 'constant.dart';
import 'homepage.dart';
// import 'login.dart';

void main() {
  runApp(const LoginUI());
}

class LoginUI extends StatelessWidget {
  const LoginUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ZenTA",
      home: Scaffold(
        backgroundColor: tWhite,
        body: const MyHomePage(),
      ),
    );
  }
}
