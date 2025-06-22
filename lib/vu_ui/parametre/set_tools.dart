import 'package:flutter/material.dart';
import 'package:projet_upc1/configuration/app_colors.dart';
import 'package:projet_upc1/routes.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: const Text('', style: TextStyle(color: AppColors.textPrimary)),
        leading: Builder(
          builder:
              (context) => IconButton(
                icon: const Icon(Icons.menu, color: AppColors.textPrimary),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: GestureDetector(
              onTap: () {
                // Action sur clic de l'avatar (ouvrir profil, etc.)
                Navigator.pushNamed(context, Routes.profil);
              },
              child: const CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage(
                  'lib/assets/images/page1.jpg',
                ), // Ton image locale
                backgroundColor: Colors.grey, // en cas d’image manquante
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          
        ],
      )
    );
  }
}