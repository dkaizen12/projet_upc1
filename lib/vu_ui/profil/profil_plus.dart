import 'package:flutter/material.dart';
import '../../model_data/user.dart';
//import '../../services/authentif_serv.dart';
import '../../widgets_communs/Profil.dart';
//import '../../services/user_serv.dart';


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

      body: user == null
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: ProfilWidget(),
            ),
    );
  }
}