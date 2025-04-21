import 'package:flutter/material.dart';
import 'login.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Page',
      debugShowCheckedModeBanner: false, 
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 59, 248, 81),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(
                image: AssetImage('assets/image/logons.png'), // Ensure the image is in the assets folder and declared in pubspec.yaml
                width: 250,
                height: 250,
              ),
              SizedBox(height: 16),
              Text(
                'Neo Saver',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(51.0),
          child: Builder(
            builder: (context) => ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 219, 25, 25),
                foregroundColor: const Color.fromARGB(255, 219, 215, 215),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  LoginPage()),
                );
              },
              child: const Text('Get Started'),
            ),
          ),
        ),
      ),
    );
  }
}