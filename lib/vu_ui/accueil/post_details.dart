import 'package:flutter/material.dart';
import 'package:projet_upc1/widgets_communs/barreapp.dart';
import 'home.dart';
import 'package:projet_upc1/vu_ui/recherche/search.dart';
import 'package:projet_upc1/vu_ui/favoris/favoris.dart';
import 'package:projet_upc1/vu_ui/parametre/parametre.dart';

class PostDetails extends StatefulWidget {
  const PostDetails({super.key});

  @override
  State<PostDetails> createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  int _selectedIndex = 0;

  // Liste des pages associées à chaque onglet
  final List<Widget> _pages = const [
    MyHomePage(title: "bonjour"),
    SearchVieuw(),
    FavorisVieuw(),
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
