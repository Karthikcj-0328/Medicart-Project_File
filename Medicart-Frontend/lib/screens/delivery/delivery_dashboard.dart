import 'package:flutter/material.dart';

class DeliveryDashboard extends StatelessWidget {
  const DeliveryDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Delivery Dashboard")),
      body: const Center(
        child: Text(
          "WELCOME DELIVERY PARTNER 🚚",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
