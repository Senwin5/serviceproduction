import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:serviceproduction/registration/signup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Service Production',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      //home: Home(),
      //home: BottomNameNav(),
      //home: BookPage(),
      //home: Login(),
      home: const Signup(), // ✅ Always start with Signup
    );
  }
}
