import 'package:flutter/material.dart';
//import 'package:projet_upc1/vu_ui/accueil/home_post.dart';
//import 'package:projet_upc1/widgets_communs/barreapp.dart';
//import 'package:projet_upc1/vu_ui/recherche/search.dart';
//import 'package:projet_upc1/vu_ui/favoris/fav.dart';
//import 'package:projet_upc1/vu_ui/parametre/parametre.dart';
import '../../model_data/user.dart';
import '../../services/user_serv.dart';
import '../../widgets_communs/stories.dart';
class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key});

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
      UserModel? user;

  @override
  void initState() {
    super.initState();
    loadOrCreateUser();
  }

  Future<void> loadOrCreateUser() async {
    final db = UserDatabaseService();
    final users = await db.getAllUsers();

    if (users.isEmpty) {
      final newUser = UserModel(
        nom: "Dady Lufua",
        email: "dady@stories.cd",
        password: 'Dadykkkk123',
        likes: 72,
        abonnes: 450,
        abonnements: 110,
        posts: ["Premier post", "Histoire drôle", "Dossier culturel"],
      );
      await db.insertUser(newUser);
      setState(() => user = newUser);
    } else {
      setState(() => user = users.first);
    }
  }


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
      body: user == null
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: ProfilWidget(user: user!),
            ),
    );
  }
}
