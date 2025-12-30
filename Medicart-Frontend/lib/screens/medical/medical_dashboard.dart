import 'package:flutter/material.dart';

class MedicalDashboard extends StatelessWidget {
  const MedicalDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Medical Dashboard")),
      body: const Center(
        child: Text(
          "WELCOME MEDICAL STORE 🏥",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
