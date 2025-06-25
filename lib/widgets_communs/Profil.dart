import 'package:flutter/material.dart';
import '../model_data/user.dart';

class ProfilWidget extends StatelessWidget {
  final UserModel user;
  final void Function()? onEditPressed; // pour ajouter un bouton "éditer", facultatif

  const ProfilWidget({
    super.key,
    required this.user,
    this.onEditPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 🔹 Photo de profil
        CircleAvatar(
          radius: 50,
          backgroundImage: user.photoUrl != null && user.photoUrl!.isNotEmpty
              ? NetworkImage(user.photoUrl!)
              : const AssetImage('lib/assets/images/img1.jpg') as ImageProvider,
        ),
        const SizedBox(height: 10),

        // 🔹 Nom & email
        Text(user.nom, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text(user.email, style: const TextStyle(color: Colors.grey)),

        if (onEditPressed != null)
          TextButton.icon(
            onPressed: onEditPressed,
            icon: const Icon(Icons.edit, size: 18),
            label: const Text("Modifier"),
          ),

        const SizedBox(height: 16),

        // 🔹 Statistiques
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildStat('Likes', user.likes),
            _buildStat('Abonnés', user.abonnes),
            _buildStat('Abonnements', user.abonnements),
          ],
        ),

        const SizedBox(height: 24),

        // 🔹 Section posts
        const Divider(thickness: 1),
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text("📚 Publications :", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ),
        ),

        if (user.posts.isEmpty)
          const Text("Aucune publication pour le moment."),
        if (user.posts.isNotEmpty)
          ListView.builder(
            itemCount: user.posts.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(Icons.article_outlined),
                title: Text(user.posts[index]),
                onTap: () {
                  // Future action: ouvrir le détail du post
                },
              );
            },
          ),
      ],
    );
  }

  Widget _buildStat(String label, int value) {
    return Column(
      children: [
        Text('$value', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}
