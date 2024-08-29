import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/pre login/splash_screen.dart';
import 'dart:async';
import 'package:camera/camera.dart';
import 'firebase_options.dart';
late List<CameraDescription> camera;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  try {
    camera = await availableCameras();
  } on CameraException catch (e) {
    print('Error: $e.code\nError Message: $e.message');
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
