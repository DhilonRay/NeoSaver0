import 'package:flutter/material.dart';

class RideRequestScreen extends StatelessWidget {
  const RideRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Request Ambulance")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(labelText: "Pickup Location"),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(labelText: "Destination"),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // For now, just pop back to map
                Navigator.pop(context);
              },
              child: const Text("Request ambulance"),
            )
          ],
        ),
      ),
    );
  }
}
