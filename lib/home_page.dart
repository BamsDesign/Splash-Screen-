import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final String email;

  const HomePage({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Byenvini $email se imel ou ",
              style: const TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 10),
            const Text(
              "Nan paj prensipal la .",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
