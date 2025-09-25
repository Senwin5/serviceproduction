import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:serviceproduction/pages/bottomnamenav.dart';
import 'package:serviceproduction/services/database.dart';
import 'package:serviceproduction/registration/login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String? fullName, email, password;

  registration() async {
    if (emailController.text != "" &&
        passwordController.text != "" &&
        fullNameController.text != "") {
      email = emailController.text.trim();
      password = passwordController.text.trim();
      fullName = fullNameController.text.trim();

      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email!, password: password!);

        String id = randomAlphaNumeric(10);
        Map<String, dynamic> userInfoMap = {
          "email": email,
          "id": id,
          "fullName": fullName,
        };

        await DatabaseMethod().addUserDetail(userInfoMap, id);

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.green,
            content: Text(
              "Registered Successfully",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
        );
        //Adding Navigator to push it forward
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const BottomNameNav()),
        );
        //Adding the if conditions to the auth firebase
      } on FirebaseAuthException catch (e) {
        String errorMsg = "";
        if (e.code == "weak-password") {
          errorMsg = "The password provided is too weak.";
        } else if (e.code == "email-already-in-use") {
          errorMsg = "The account already exists for that email.";
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
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.orange,
          content: Text("Please fill all fields"),
        ),
      );
    }
  }

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
                controller: fullNameController,
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
                controller: emailController,
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
                controller: passwordController,
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
                  GestureDetector(
                    onTap: () {
                      if (passwordController.text != "" &&
                          emailController.text != "" &&
                          fullNameController.text != "") {
                        setState(() {
                          email = emailController.text.trim();
                          password = passwordController.text.trim();
                          fullName = fullNameController.text.trim();
                        });
                        registration();
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            backgroundColor: Colors.red,
                            content: Text(
                              "Please fill complete details",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        );
                      }
                    },
                    child: Material(
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
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
