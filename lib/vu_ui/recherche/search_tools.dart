import 'package:flutter/material.dart';
import 'package:projet_upc1/routes.dart';
import 'package:projet_upc1/configuration/app_colors.dart';

class SearchVieuw extends StatefulWidget {
  const SearchVieuw({super.key});

  @override
  State<SearchVieuw> createState() => _SearchVieuwState();
}

class _SearchVieuwState extends State<SearchVieuw> {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
      child: SizedBox(
        width: width,
        child: Row(
          children: [
            // Champ de recherche
            Expanded(
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Rechercher une story...',
                  hintStyle: TextStyle(color:AppColors.secondary ),
                  border: InputBorder.none, // Aucune bordure
                ),
              ),
            ),
            // Bouton icône
            IconButton(
              icon: const Icon(Icons.search, color: Colors.black),
              onPressed: () {
                // action de recherche
              },
            ),
          ],
        ),
      ),
    ), 
      const Divider(
            thickness: 1,
            color: Colors.black,
            height: 0,
          ),
        ],
      ),
    );
  }
}