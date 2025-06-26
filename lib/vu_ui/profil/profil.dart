import 'package:flutter/material.dart';
//import 'package:projet_upc1/vu_ui/accueil/home_post.dart';
//import 'package:projet_upc1/widgets_communs/barreapp.dart';
//import 'package:projet_upc1/vu_ui/recherche/search.dart';
//import 'package:projet_upc1/vu_ui/favoris/fav.dart';
//import 'package:projet_upc1/vu_ui/parametre/parametre.dart';
import '../../model_data/user.dart';
//import '../../services/user_serv.dart';
import '../../widgets_communs/Profil.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key});

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  UserModel? user;
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
      body:
          user == null
              ? const Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: ProfilWidget(),
              ),
    );
  }
}
