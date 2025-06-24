import 'package:flutter/material.dart';
import 'package:projet_upc1/configuration/app_colors.dart';
import '../../widgets_communs/post_card.dart';
import 'post.dart';
//import 'package:projet_upc1/routes.dart';

class MyHomePost extends StatefulWidget {
  const MyHomePost({super.key});

  @override
  State<MyHomePost> createState() => _MyHomePostState();
}

class _MyHomePostState extends State<MyHomePost> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 1),
              child: Text(
                "Hi, User",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
            ),
            Divider(height: 0.8, color: AppColors.divider),
            // 🔸 Onglets en dehors de AppBar
            Container(
              color: Colors.grey[200],
              child: TabBar(
                isScrollable: true,
                indicatorColor: AppColors.secondary,
                labelColor: AppColors.textSecondary,
                unselectedLabelColor: AppColors.primary,
                indicatorWeight: 3.0,
                tabs: const [
                  Tab(text: "Pour toi"),
                  Tab(text: "Catégories"),
                  Tab(text: "Populaire"),
                  Tab(text: "Abonnement"),
                ],
              ),
            ),
            // 🔸 Contenu de chaque onglet
            Expanded(
              child: TabBarView(
                children: [
                  PostTile(
                    categorie: "RDC",
                    titre: "Le président congolais suspecté...",
                    auteur: "Username02",
                    date: "Il y a 10 mois",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const Post(),
                        ),
                      ); // Exemple de navigation
                    },
                  ),
                  Center(child: Text("Contenu : Catégories")),
                  Center(child: Text("Contenu : Populaire")),
                  Center(child: Text("Contenu : Abonnement")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
