import 'package:flutter/material.dart';
import '../common/signup_success.dart';
import 'delivery_login.dart';

class DeliverySignup extends StatefulWidget {
  const DeliverySignup({super.key});

  @override
  State<DeliverySignup> createState() => _DeliverySignupState();
}

class _DeliverySignupState extends State<DeliverySignup> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController companyController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool hidePassword = true;

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
                "Enter delivery partner details to get started",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 30),

              // 👤 NAME
              const Text("Full Name"),
              const SizedBox(height: 8),
              _inputField(
                controller: nameController,
                hint: "eg., Rajesh",
              ),

              const SizedBox(height: 20),

              // 📞 PHONE
              const Text("Phone Number"),
              const SizedBox(height: 8),
              _inputField(
                controller: phoneController,
                hint: "eg., +91 9876543210",
                keyboardType: TextInputType.phone,
              ),

              const SizedBox(height: 20),

              // 🏢 DELIVERY COMPANY
              const Text("Delivery Company Name"),
              const SizedBox(height: 8),
              _inputField(
                controller: companyController,
                hint: "eg., Fast Delivery Pvt Ltd",
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
                              MaterialPageRoute(builder: (_) => DeliveryLogin()),
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
