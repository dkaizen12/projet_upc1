import 'package:flutter/material.dart';
import 'routes.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 🔹 Arrière-plan avec une image
        Positioned.fill(
          child: Image.asset(
            'lib/assets/images/page1.jpg', //l’image est bien déclarée dans pubspec.yaml
            fit: BoxFit.cover, // 🔹 L’image remplit tout l’espace
          ),
        ),

        // 🔹 Contenu au-dessus de l’image
        Positioned(top : 20,
        left: 200,
        child: Icon(Icons.phone)),
        Positioned(
          top: 40,
          left: 200,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.5), // Effet flouté
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              'Bienvenue sur Stories +243',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 30,
          left: 40,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                Navigator.pushNamed(context, Routes.home);
              });
            },
            child: const Text("Commencez"),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll<Color>(Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
