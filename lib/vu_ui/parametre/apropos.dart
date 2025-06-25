import 'package:flutter/material.dart';

class Apropros extends StatelessWidget {
  const Apropros({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("À propos")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Nom : Stories +243", style: TextStyle(fontSize: 16)),
            Text("Version : 1.0.0", style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text("Stories +243 est une plateforme communautaire de récits urbains, "
                "actualités et histoires culturelles congolaises."),
            SizedBox(height: 20),
            Text("Développé par : Dady Lufua"),
            Text("Technologies : Flutter, Firebase"),
            SizedBox(height: 10),
            Text("Contact : stories243@protonmail.com"),
            SizedBox(height: 20),
            Text("Mentions légales : Merci à toutes les communautés open source.")
          ],
        ),
      ),
    );
  }
}