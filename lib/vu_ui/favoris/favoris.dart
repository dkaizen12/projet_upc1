import 'package:flutter/material.dart';
import 'package:projet_upc1/vu_ui/accueil/home_post.dart';
import 'package:projet_upc1/vu_ui/recherche/search_tools.dart';
import 'package:projet_upc1/widgets_communs/barreapp.dart';
import 'package:projet_upc1/vu_ui/parametre/parametre.dart';
import 'fav.dart';

class FavorisVieuw extends StatefulWidget {
  const FavorisVieuw({super.key, required title});

  @override
  State<FavorisVieuw> createState() => _FavorisVieuwState();
}

class _FavorisVieuwState extends State<FavorisVieuw> {
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
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: // 🔽 Barre de navigation inférieure
          NavBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
      ),
    );
  }
}