import 'package:flutter/material.dart';
import 'package:projet_upc1/routes.dart';
import 'package:projet_upc1/configuration/app_colors.dart';
import 'package:projet_upc1/vu_ui/accueil/home_post.dart';
import 'package:projet_upc1/widgets_communs/barreapp.dart';
import 'package:projet_upc1/vu_ui/favoris/fav.dart';
import 'package:projet_upc1/vu_ui/parametre/parametre.dart';

class SearchVieuw extends StatefulWidget {
  const SearchVieuw({super.key});

  @override
  State<SearchVieuw> createState() => _SearchVieuwState();
}

class _SearchVieuwState extends State<SearchVieuw> {
    int _selectedIndex = 0;

  // Liste des pages associées à chaque onglet
  final List<Widget> _pages = const [
    MyHomePost(),
    SearchVieuw(),
    FavPost(),
    SettingVieuw(),
  ];
  @override
  Widget build(BuildContext context) {
    //final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: const Text(
          '',
          style: TextStyle(color: AppColors.textPrimary),
        ),
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
      body:  _pages[_selectedIndex],
      bottomNavigationBar: // 🔽 Barre de navigation inférieure
          NavBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
      ),
    );
  }
}