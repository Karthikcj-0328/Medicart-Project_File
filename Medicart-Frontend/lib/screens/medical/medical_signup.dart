import 'package:flutter/material.dart';
import '../common/signup_success.dart';
import 'medical_login.dart';

class MedicalSignup extends StatefulWidget {
  const MedicalSignup({super.key});

  @override
  State<MedicalSignup> createState() => _MedicalSignupState();
}

class _MedicalSignupState extends State<MedicalSignup> {
  final TextEditingController storeNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passKeyController = TextEditingController();

  bool hidePassKey = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),

              const Text(
                "Create new account",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 6),

              const Text(
                "Enter medical store details to get started",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 30),

              // 🏪 STORE NAME
              const Text("Store Name"),
              const SizedBox(height: 8),
              _inputField(
                controller: storeNameController,
                hint: "eg., Apollo Pharmacy",
              ),

              const SizedBox(height: 20),

              // 📞 PHONE NUMBER
              const Text("Phone Number"),
              const SizedBox(height: 8),
              _inputField(
                controller: phoneController,
                hint: "eg., +91 9876543210",
                keyboardType: TextInputType.phone,
              ),

              const SizedBox(height: 20),

              // 🔑 PASS KEY
              const Text("Pass Key"),
              const SizedBox(height: 8),
              _inputField(
                controller: passKeyController,
                hint: "••••••••",
                obscure: hidePassKey,
                suffix: IconButton(
                  icon: Icon(
                    hidePassKey
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      hidePassKey = !hidePassKey;
                    });
                  },
                ),
              ),

              const SizedBox(height: 30),

              // 🔵 SIGN UP BUTTON
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                 onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => SignupSuccess(
                          onContinue: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (_) => MedicalLogin()),
                              (route) => false,
                            );
                          },
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    "Create account",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // 🔹 COMMON INPUT FIELD
  Widget _inputField({
    required TextEditingController controller,
    required String hint,
    TextInputType keyboardType = TextInputType.text,
    bool obscure = false,
    Widget? suffix,
  }) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: hint,
        suffixIcon: suffix,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Colors.blue),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Colors.blue, width: 1.5),
        ),
      ),
    );
  }
}
