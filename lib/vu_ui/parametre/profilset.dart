import 'package:flutter/material.dart';

class ProfilSetting extends StatefulWidget {
  const ProfilSetting({super.key});

  @override
  State<ProfilSetting> createState() => _ProfilSettingState();
}

class _ProfilSettingState extends State<ProfilSetting> {
  String userName = "Dady Lufua";
  String userEmail = "dady@stories.cd";
  String? photoUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mon profil")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // 🔹 Profil en haut
          Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.grey,
                  backgroundImage:
                      photoUrl != null ? NetworkImage(photoUrl!) : null,
                  child: photoUrl == null ? const Icon(Icons.person, size: 40) : null,
                ),
                const SizedBox(height: 10),
                Text(userName, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text(userEmail, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          const SizedBox(height: 30),

          // 🔹 Changer mot de passe
          ListTile(
            leading: const Icon(Icons.lock_outline),
            title: const Text("Changer mot de passe"),
            onTap: () {
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: const Text("Changer mot de passe"),
                  content: const Text("Cette fonction sera bientôt disponible."),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text("Fermer"),
                    ),
                  ],
                ),
              );
            },
          ),

          // 🔹 Historique des publications (placeholder)
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text("Voir mes publications"),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Fonctionnalité à venir")),
              );
            },
          ),

          // 🔹 Historique des favoris
          ListTile(
            leading: const Icon(Icons.favorite_outline),
            title: const Text("Mes favoris"),
            onTap: () {
              // Naviguer vers ta page des favoris
            },
          ),

          const Divider(height: 30),

          // 🔹 Supprimer le compte
          ListTile(
            leading: const Icon(Icons.delete_forever, color: Colors.red),
            title: const Text("Supprimer mon compte", style: TextStyle(color: Colors.red)),
            onTap: () => showDialog(
              context: context,
              builder: (_) => AlertDialog(
                title: const Text("Confirmer la suppression"),
                content: const Text(
                    "Es-tu sûr de vouloir supprimer ton compte ? Cette action est irréversible."),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Annuler"),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () {
                      // Ici tu appelleras la méthode pour supprimer dans SQLite ou Firebase
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Compte supprimé (simulation)")),
                      );
                    },
                    child: const Text("Supprimer"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}