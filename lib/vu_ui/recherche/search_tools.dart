import 'package:flutter/material.dart';
//import 'package:projet_upc1/routes.dart';
import 'package:projet_upc1/configuration/app_colors.dart';

class SearchVieuw1 extends StatefulWidget {
  const SearchVieuw1({super.key});

  @override
  State<SearchVieuw1> createState() => _SearchVieuwState();
}

class _SearchVieuwState extends State<SearchVieuw1> {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
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
     Divider(
            thickness: 1,
            color: Colors.black,
            height: 0,
          ),
        ],
      ),
    );
  }
}