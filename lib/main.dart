import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() => runApp(const NeoSaverApp());

class NeoSaverApp extends StatelessWidget {
  const NeoSaverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neo Saver',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SplashScreen(),
    );
  }
}
