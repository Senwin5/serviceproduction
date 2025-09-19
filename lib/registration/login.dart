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
      body: Container(
        color: Color(0xffefeeed),
        child: Column(
          children: [
            Image.asset("asset/register/signin.png"),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: TextField(decoration: InputDecoration(hintText: 'Email')),
            ),
          ],
        ),
      ),
    );
  }
}
