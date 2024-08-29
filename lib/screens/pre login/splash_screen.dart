import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pose_estimation/screens/home_screen.dart';
import 'package:pose_estimation/screens/pre login/welcome_view.dart';

import '../../main.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay for the splash screen
    Future.delayed(const Duration(seconds: 3), () {
      FirebaseAuth.instance
          .authStateChanges()
          .listen((User? user) {
        if (user == null) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const WelcomeView()),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) =>  HomeScreen(camera)),
          );
        }
      });
      // Navigate to the main screen after the delay

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Customize the background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add your medical app logo or any other relevant content
            Image.asset(
              'images/logo2.png', // Replace with your image path
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 16),
            const Text(
              'Fit Track', // Customize the app name or text
              style: TextStyle(
                fontSize: 24,
                color: Colors.blue, // Customize the text color
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
