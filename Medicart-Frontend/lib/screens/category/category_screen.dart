import 'package:flutter/material.dart';

import '../patient/patient_login.dart';
import '../doctor/doctor_login.dart';
import '../medical/medical_login.dart';
import '../delivery/delivery_login.dart';
import '../admin/admin_login.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  String selectedRole = ""; // initially nothing selected

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 30),

              // 🔵 Top Icon
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.add_box_outlined,
                  color: Colors.blue,
                  size: 32,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Select Your Role",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 6),

              const Text(
                "Choose how you want to use the app",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 30),

              // 🔹 PATIENT
              RoleButton(
                title: "Patient",
                icon: Icons.person_outline,
                isSelected: selectedRole == "Patient",
                onTap: () {
                  setState(() {
                    selectedRole = "Patient";
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => PatientLogin()),
                  );
                },
              ),

              // 🔹 DOCTOR
              RoleButton(
                title: "Doctor",
                icon: Icons.medical_services_outlined,
                isSelected: selectedRole == "Doctor",
                onTap: () {
                  setState(() {
                    selectedRole = "Doctor";
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => DoctorLogin()),
                  );
                },
              ),

              // 🔹 PHARMACY
              RoleButton(
                title: "Pharmacy",
                icon: Icons.medication_outlined,
                isSelected: selectedRole == "Pharmacy",
                onTap: () {
                  setState(() {
                    selectedRole = "Pharmacy";
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => MedicalLogin()),
                  );
                },
              ),

              // 🔹 DELIVERY
              RoleButton(
                title: "Delivery",
                icon: Icons.delivery_dining_outlined,
                isSelected: selectedRole == "Delivery",
                onTap: () {
                  setState(() {
                    selectedRole = "Delivery";
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => DeliveryLogin()),
                  );
                },
              ),

              // 🔹 ADMIN
              RoleButton(
                title: "Admin",
                icon: Icons.admin_panel_settings_outlined,
                isSelected: selectedRole == "Admin",
                onTap: () {
                  setState(() {
                    selectedRole = "Admin";
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => AdminLogin()),
                  );
                },
              ),

              const Spacer(),

              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "You'll log in or create an account next",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class RoleButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  const RoleButton({
    super.key,
    required this.title,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(40),
        child: Container(
          height: 64,
          decoration: BoxDecoration(
            color: isSelected ? Colors.blue : Colors.grey.shade300,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            children: [
              const SizedBox(width: 10),
              Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                  color: isSelected ? Colors.white24 : Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  color: isSelected ? Colors.white : Colors.blue,
                ),
              ),
              const SizedBox(width: 20),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
