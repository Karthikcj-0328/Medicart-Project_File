import 'package:flutter/material.dart';
import 'password_changed.dart';

class CreateNewPassword extends StatefulWidget {
  final VoidCallback onPasswordChanged;

  const CreateNewPassword({
    super.key,
    required this.onPasswordChanged,
  });

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  bool hideNew = true;
  bool hideConfirm = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              // 📝 TITLE
              const Text(
                "Create new password",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                "Choose a new password to secure\nyour account",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  height: 1.4,
                ),
              ),

              const SizedBox(height: 30),

              // 🔑 NEW PASSWORD
              const Text(
                "New password",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),

              _passwordField(
                hide: hideNew,
                hint: "",
                onToggle: () {
                  setState(() => hideNew = !hideNew);
                },
              ),

              const SizedBox(height: 6),

              const Text(
                "Use at least 8 characters with a mix of letters, symbols and numbers",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 20),

              // 🔑 CONFIRM PASSWORD
              const Text(
                "Confirm new password",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),

              _passwordField(
                hide: hideConfirm,
                hint: "Re-enter password",
                onToggle: () {
                  setState(() => hideConfirm = !hideConfirm);
                },
              ),

              const SizedBox(height: 40),

              // 🔵 SAVE BUTTON
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                   Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (_) => PasswordChanged(
                            onContinue: widget.onPasswordChanged,
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
                    "Save password",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 🔹 PASSWORD INPUT FIELD (COMMON)
  Widget _passwordField({
    required bool hide,
    required String hint,
    required VoidCallback onToggle,
  }) {
    return TextField(
      obscureText: hide,
      decoration: InputDecoration(
        hintText: hint,
        suffixIcon: IconButton(
          icon: Icon(
            hide ? Icons.visibility_off : Icons.visibility,
            color: Colors.grey,
          ),
          onPressed: onToggle,
        ),
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
