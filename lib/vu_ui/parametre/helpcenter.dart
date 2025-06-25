import 'package:flutter/material.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> faqs = [
      {
        "q": "Comment publier une histoire ?",
        "a": "Allez dans l’onglet principal, puis cliquez sur l’icône + en bas à droite.",
      },
      {
        "q": "Comment liker ou commenter ?",
        "a": "Sous chaque post, utilisez les icônes 👍 💬.",
      },
      {
        "q": "Que faire si une histoire choque ?",
        "a": "Appuyez sur les trois points ⋮ et choisissez 'Signaler'.",
      },
      {
        "q": "Comment signaler un abus ?",
        "a": "Utilisez le formulaire ou contactez-nous à help@stories243.cd",
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Centre d'aide")),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: faqs.length,
        itemBuilder: (_, index) {
          return ExpansionTile(
            title: Text(faqs[index]["q"]!),
            children: [Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(faqs[index]["a"]!),
            )],
          );
        },
      ),
    );
  }
}
