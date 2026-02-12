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
              "Byenvini $email 🎉",
              style: const TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 20),
            const Text(
              "Sa se paj prensipal aplikasyon an.",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
