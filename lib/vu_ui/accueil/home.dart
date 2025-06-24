import 'package:flutter/material.dart';
import 'package:projet_upc1/configuration/app_colors.dart';
import 'package:projet_upc1/routes.dart';
import 'package:projet_upc1/widgets_communs/barreapp.dart';
import 'package:projet_upc1/vu_ui/recherche/search_tools.dart';
import 'package:projet_upc1/vu_ui/favoris/fav.dart';
import 'package:projet_upc1/vu_ui/parametre/set_tools.dart';
import 'package:projet_upc1/vu_ui/accueil/home_post.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // Liste des pages associées à chaque onglet
  final List<Widget> _pages = [
    MyHomePost(),
    SearchVieuw1(),
    FavPost(),
    MyWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        backgroundColor: AppColors.primary,
        width: 200,
        child: Center(child: Text("Menu du drawer"), 
        ),
        
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: const Text('', style: TextStyle(color: Colors.black)),
        leading: Builder(
          builder:
              (context) => IconButton(
                icon: const Icon(Icons.menu, color: Colors.black),
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
