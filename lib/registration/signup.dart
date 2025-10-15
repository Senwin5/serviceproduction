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

  bool _isPasswordHidden = true;

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

        User? user = userCredential.user;

        // ✅ Save fullName as displayName in FirebaseAuth
        await user?.updateDisplayName(fullName);
        await user?.reload();

        // Store additional details in your own database if needed
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

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const BottomNameNav()),
        );
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
      backgroundColor: const Color(0xffefeeed),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("asset/register/login.jpg"),
            const SizedBox(height: 30.0),

            // Full Name
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: TextField(
                controller: fullNameController,
                decoration: const InputDecoration(
                  hintText: 'Full Name:',
                  hintStyle: TextStyle(color: Colors.black54, fontSize: 25.0),
                ),
              ),
            ),
            const SizedBox(height: 30.0),

            // Email
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: 'Email:',
                  hintStyle: TextStyle(color: Colors.black54, fontSize: 25.0),
                ),
              ),
            ),
            const SizedBox(height: 30.0),

            // Password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: TextField(
                controller: passwordController,
                obscureText: _isPasswordHidden,
                decoration: InputDecoration(
                  hintText: 'Password:',
                  hintStyle: const TextStyle(
                    color: Colors.black54,
                    fontSize: 25.0,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordHidden
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordHidden = !_isPasswordHidden;
                      });
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40.0),

            // Sign Up Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
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
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color(0xff3a6484),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon(
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
            const SizedBox(height: 20.0),

            // Already have an account? Login
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
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
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                  child: const Text(
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
