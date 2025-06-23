import 'package:flutter/material.dart';
//import 'package:projet_upc1/configuration/app_colors.dart';
import 'package:projet_upc1/routes.dart';
import 'dart:ui';
import 'package:projet_upc1/vu_ui/connexion/connexion.dart';
//import 'package:projet_upc1/configuration/app_theme.dart';
//page d'enregistrement

class Registre_page extends StatefulWidget {
  const Registre_page({super.key});

  @override
  State<Registre_page> createState() => _Registre_pageState();
}

class _Registre_pageState extends State<Registre_page> {
  bool isChecked = false; // Pour la case à cocher

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 🔹 Arrière-plan : image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'lib/assets/images/page1.jpg',
                ), // Ajoute ton image ici
                fit: BoxFit.cover,
              ),
            ),
          ),

          // 🔹 Couche floutée avec formulaire au centre
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10,
                  sigmaY: 10,
                ), // Effet de flou
                child: Container(
                  padding: EdgeInsets.all(24),
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white54),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // 🔸 Titre principal
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      //Nom d'utilisateur 
                  Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Nom d'utilisateur",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 5),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white.withValues(alpha: 0.7),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Entrez votre nom sur l'app, ex: Dady",
                        ),
                      ),
                      SizedBox(height: 15),

                      // 🔸 Email
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Email",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 5),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white.withValues(alpha: 0.7),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Entrez votre email",
                        ),
                      ),
                      SizedBox(height: 15),

                      // 🔸 Password
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Password",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 5),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white.withValues(alpha: 0.7),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Entrez votre mot de passe",
                        ),
                      ),

                      //confirmer votre mot de passe 

                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Confirmer votre mot de passe",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 5),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white.withValues(alpha: 0.7),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Confirmer le mot de passe ",
                        ),
                      ),

                      SizedBox(height: 15),

                      // 🔸 Case à cocher
                      Row(
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (val) {
                              setState(() => isChecked = val ?? false);
                            },
                          ),
                          Expanded(
                            child: Text(
                              "J'accepte les termes de politique privée",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 10),

                      // 🔸 Bouton confirmer
                      ElevatedButton(
                        onPressed: () {
                          // Logique de validation
                          Navigator.pushNamed(context, Routes.home);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 14,
                            horizontal: 40,
                          ),
                        ),
                        child: Text("Confirmer"),
                      ),

                      SizedBox(height: 20),

                      // 🔸 Divider personnalisé
                      Row(
                        children: [
                          Expanded(child: Divider(color: Colors.white)),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "S'enregistrer avec",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Expanded(child: Divider(color: Colors.white)),
                        ],
                      ),
                      SizedBox(height: 15),

                      // 🔸 Bouton Google
                      ElevatedButton.icon(
                        onPressed: () {
                          // Connexion Google
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black87,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 14,
                            horizontal: 20,
                          ),
                        ),
                        icon: Icon(Icons.g_mobiledata),
                        label: Text("Se connecter avec Google"),
                      ),

                      SizedBox(height: 25),

                      // 🔸 Déjà inscrit
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Déjà inscrit ? ",
                            style: TextStyle(color: Colors.white),
                          ),
                          TextButton(
                            onPressed: () {
                              // Aller à la page de connexion
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => login_vieuw(),
                                ),
                              );
                            },
                            child: Text("Connexion"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
