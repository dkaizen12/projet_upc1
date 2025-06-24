import 'package:flutter/material.dart';
import 'package:projet_upc1/configuration/app_colors.dart';
import 'package:projet_upc1/routes.dart';
import 'package:projet_upc1/vu_ui/accueil/home_post.dart';
import 'package:projet_upc1/vu_ui/favoris/fav.dart';
import 'package:projet_upc1/vu_ui/recherche/search_tools.dart';
import 'package:projet_upc1/widgets_communs/barreapp.dart';


class SettingVieuw extends StatefulWidget {
  const SettingVieuw({super.key});

  @override
  State<SettingVieuw> createState() => _SettingVieuwState();
}

class _SettingVieuwState extends State<SettingVieuw> {
  bool etat = false; 
  void control (bool a){
    setState(() {
      etat = a;
    });
  }

  int _selectedIndex = 0;

  // Liste des pages associées à chaque onglet
  final List<Widget> _pages = const [
    MyHomePost(),
    SearchVieuw1(),
    FavPost(),
    SettingVieuw(),
  ];

  @override
  Widget build(BuildContext context) {
   // final width = MediaQuery.of(context).size.width;
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
       body: _pages[_selectedIndex],
      bottomNavigationBar: // 🔽 Barre de navigation inférieure
          NavBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
      ),
    );
  }
}
