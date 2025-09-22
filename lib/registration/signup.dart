import 'package:flutter/material.dart';
import 'package:serviceproduction/registration/login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffefeeed),
      body: Container(
        child: Column(
          children: [
            Image.asset("asset/register/login.jpg"),
            SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Full Name:',
                  hintStyle: TextStyle(color: Colors.black54, fontSize: 25.0),
                ),
              ),
            ),
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
            SizedBox(height: 40.0),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xff3a6484),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Login(),),);
                  },
                  child: Text(
                    ' Login',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
