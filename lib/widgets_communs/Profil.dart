import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import '../services/authentif_serv.dart'; // à adapter selon ton chemin
import '../model_data/user.dart';
import '../services/user_serv.dart';

class ProfilWidget extends StatefulWidget {
  const ProfilWidget({super.key});

  @override
  State<ProfilWidget> createState() => _ProfilWidgetState();
}

class _ProfilWidgetState extends State<ProfilWidget> {
  UserModel? userModel;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    final data = await UserDatabaseService ().getCurrentUserData(); // 🔹 étape b appelée ici
    setState(() {
      userModel = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (userModel == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: userModel!.photoUrl != null
              ? NetworkImage(userModel!.photoUrl!)
              : const AssetImage('assets/default_avatar.png') as ImageProvider,
        ),
        const SizedBox(height: 10),
        Text(userModel!.nom, style: const TextStyle(fontSize: 20)),
        Text(userModel!.email),
        Text("Abonnés : ${userModel!.abonnes}"),
        Text("Abonnements : ${userModel!.abonnements}"),
        Text("Likes : ${userModel!.likes}"),
      ],
    );
  }
}

