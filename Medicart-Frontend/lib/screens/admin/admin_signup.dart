import 'package:flutter/material.dart';
import '../common/signup_success.dart';
import 'admin_login.dart';

class AdminSignup extends StatefulWidget {
  const AdminSignup({super.key});

  @override
  State<AdminSignup> createState() => _AdminSignupState();
}

class _AdminSignupState extends State<AdminSignup> {
  final String adminSecretKey = "MEDICART_ADMIN_2025";

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController aadhaarController = TextEditingController();
  final TextEditingController secretController = TextEditingController();

  bool hidePassword = true;
  bool hideSecret = true;

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
                "Restricted admin registration",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.redAccent,
                ),
              ),

              const SizedBox(height: 30),

              // 👑 NAME
              const Text("Admin Name"),
              const SizedBox(height: 8),
              _inputField(
                controller: nameController,
                hint: "eg., Super Admin",
              ),

              const SizedBox(height: 20),

              // 📧 EMAIL
              const Text("Gmail ID"),
              const SizedBox(height: 8),
              _inputField(
                controller: emailController,
                hint: "eg., admin@gmail.com",
                keyboardType: TextInputType.emailAddress,
              ),

              const SizedBox(height: 20),

              // 🔑 PASSWORD
              const Text("Password"),
              const SizedBox(height: 8),
              _inputField(
                controller: passwordController,
                hint: "••••••••",
                obscure: hidePassword,
                suffix: IconButton(
                  icon: Icon(
                    hidePassword
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      hidePassword = !hidePassword;
                    });
                  },
                ),
              ),
// 🆔
              
              const SizedBox(height: 20),

              // 🔐 SECRET KEY
              const Text(
                "Important Admin ID",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              _inputField(
                controller: secretController,
                hint: "Enter secret admin key",
                obscure: hideSecret,
                suffix: IconButton(
                  icon: Icon(
                    hideSecret
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      hideSecret = !hideSecret;
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
                    //if (secretController.text == adminSecretKey) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => SignupSuccess(
                            onContinue: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(builder: (_) => AdminLogin()),
                                (route) => false,
                              );
                            },
                          ),
                        ),
                      );
                   // }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    "Create Admin Account",
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
