import 'package:flutter/material.dart';

class Politique extends StatelessWidget {
  const Politique({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Politique de confidentialité")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("🔐 Données collectées : email, nom, préférences."),
              SizedBox(height: 10),
              Text("📦 Usage : pour personnaliser votre expérience uniquement."),
              SizedBox(height: 10),
              Text("🔒 Sécurité : Vos données sont protégées et non revendues."),
              SizedBox(height: 10),
              Text("🗑️ Suppression : Vous pouvez supprimer votre compte via les paramètres."),
              SizedBox(height: 10),
              Text("📧 Contact : privacy@stories243.cd"),
            ],
          ),
        ),
      ),
    );
  }
}
