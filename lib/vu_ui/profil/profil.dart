import 'package:flutter/material.dart';
import 'package:projet_upc1/vu_ui/accueil/home_post.dart';
import 'package:projet_upc1/widgets_communs/barreapp.dart';
import 'package:projet_upc1/vu_ui/recherche/search.dart';
import 'package:projet_upc1/vu_ui/favoris/fav.dart';
import 'package:projet_upc1/vu_ui/parametre/parametre.dart';
class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key});

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
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
    return Scaffold(
            appBar: AppBar(
        title: Text("Profil"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
      ),
      body: _pages[_selectedIndex],
      // 🔽 Barre de navigation inférieure
      bottomNavigationBar: NavBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        ),
    );
  }
}