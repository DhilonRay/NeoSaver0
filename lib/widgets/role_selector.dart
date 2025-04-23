import 'package:flutter/material.dart';

class RoleSelector extends StatelessWidget {
  final Function(String) onRoleSelected;

  const RoleSelector({super.key, required this.onRoleSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Select your role:",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => onRoleSelected("User"),
          child: const Text("Sign Up as User"),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () => onRoleSelected("Driver"),
          child: const Text("Sign Up as Driver"),
        ),
      ],
    );
  }
}
