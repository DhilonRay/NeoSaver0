import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp();
    runApp(const NeoSaverApp());
  } catch (e) {
    runApp(const FirebaseInitErrorApp());
  }
}

class NeoSaverApp extends StatelessWidget {
  const NeoSaverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neo Saver',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const LoginScreen(),
    );
  }
}

class FirebaseInitErrorApp extends StatelessWidget {
  const FirebaseInitErrorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            'Failed to initialize Firebase. Please restart the app.',
            style: TextStyle(color: const Color.fromARGB(255, 133, 240, 151), fontSize: 38),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
