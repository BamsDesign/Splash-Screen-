import 'package:flutter/material.dart';
import 'login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();

  void signup() {
    if (_formKey.currentState!.validate()) {

      String email = emailController.text.trim();
      String password = passwordController.text.trim();

      fakeDatabase[email] = password;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Enskripsyon reyisi")),
      );

      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Signup")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [

              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(labelText: "Email"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Antre email";
                  }
                  if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                    return "Email pa valid";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 15),

              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(labelText: "Password"),
                validator: (value) {
                  if (value == null || value.length < 8) {
                    return "Modpas dwe gen omwen 8 karaktè";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 15),

              TextFormField(
                controller: confirmController,
                obscureText: true,
                decoration: const InputDecoration(labelText: "Confirm Password"),
                validator: (value) {
                  if (value != passwordController.text) {
                    return "Modpas yo pa menm";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: signup,
                child: const Text("Sign Up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

