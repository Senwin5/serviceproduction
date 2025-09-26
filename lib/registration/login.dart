import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:serviceproduction/pages/bottomnamenav.dart';
import 'package:serviceproduction/registration/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //Integrating firebase auth to the app
  String? email, password;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  userLogin() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email!,
        password: password!,
      );

      Navigator.popAndPushNamed(
        context,
        MaterialPageRoute(builder: (context) => BottomNameNav()),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        String errorMsg = "";
        if (e.code == "user-not-found") {
          errorMsg = "No user found for that email.";
        } else if (e.code == "invalid-email") {
          errorMsg = "The email address is badly formatted.";
        } else {
          errorMsg = e.message ?? "An error occurred";
        }

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.red,
            content: Text(errorMsg, style: const TextStyle(fontSize: 16.0)),
          ),
        );
      }
    }
  }

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
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xffea6d35),
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
                  "Don't have an account?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signup()),
                    );
                  },
                  child: Text(
                    ' Sign Up',
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
