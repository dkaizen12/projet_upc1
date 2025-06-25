import 'package:flutter/material.dart';
import 'package:projet_upc1/configuration/app_colors.dart';
import '../../widgets_communs/post_card.dart';
//import 'package:projet_upc1/routes.dart';

class FavPost extends StatefulWidget {
  const FavPost({super.key});

  @override
  State<FavPost> createState() => _FavPostState();
}

class _FavPostState extends State<FavPost> {
  @override
  Widget build(BuildContext context) {
    //final width = MediaQuery.of(context).size.width;
    return Scaffold(body: Column(children: [
      Padding(padding: EdgeInsets.only(top: 4, left: 8), 
      child: Text("Mes Favoris"),
      ),
      Divider(height: 0.8, color: AppColors.divider),
      ListView(
        children: [
          PostTile(categorie: "game", titre: "les jeux vidéos de demain", auteur: "steven", date: "24/04/25", onTap: (){
            
          })
        ],
      )
    ]));
  }
}
