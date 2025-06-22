import 'package:flutter/material.dart';
import 'package:projet_upc1/configuration/app_colors.dart';
import 'package:projet_upc1/routes.dart';
//import 'package:projet_upc1/configuration/app_theme.dart';
//page d'enregistrement

class Registre_page extends StatefulWidget {
  const Registre_page({super.key});

  @override
  State<Registre_page> createState() => _Registre_pageState();
}

class _Registre_pageState extends State<Registre_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.60,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage('lib/assets/images/page1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                'Stories +243 - Inscription',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Rire, informer, debattre, faire reflechir, \n Decouvrir Kinshasa comme jamais auparavent',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                    fontFamily: "poppins",
                  ),
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    child: Text("Connectez-vous avec Google"),
                    onPressed:
                        () => Navigator.pushNamed(context, Routes.registre),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, Routes.login),
                    child: Text(
                      "Si vous avez déjà un compte",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
