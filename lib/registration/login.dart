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
      backgroundColor: Color(0xffefeeed),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("asset/register/signin.png"),
            SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email:',
                  hintStyle: TextStyle(color: Colors.black54, fontSize: 25.0),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Password:',
                  hintStyle: TextStyle(color: Colors.black54, fontSize: 25.0),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(right: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50.0),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Color(0xffea6d35)),
                    child: Icon(Icons.arrow_forward, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
