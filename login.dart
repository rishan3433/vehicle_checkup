import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              child: Column(
                children: [
                  Text("HAYA"),
                  Text("AGENCIES"),
                  Text("VEHICLE CHECK UP"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
