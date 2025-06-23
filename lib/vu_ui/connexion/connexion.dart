import 'package:flutter/material.dart';
import 'package:projet_upc1/configuration/app_colors.dart';
import 'package:projet_upc1/routes.dart';
import 'sign_in.dart';
//import 'package:projet_upc1/configuration/app_theme.dart';
//page de connexion

class login_vieuw extends StatefulWidget {
  const login_vieuw({super.key});

  @override
  State<login_vieuw> createState() => _login_vieuwState();
}

class _login_vieuwState extends State<login_vieuw> {
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
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage('lib/assets/images/page1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                'Stories +243 - Connexion',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),

              ElevatedButton(
                onPressed: () => SignIn(),
                child: Text("Connexion"),
              ),
              Column(
                children: [
                  ElevatedButton(
                    child: Text("Connectez-vous avec Google"),
                    onPressed:
                        () => Navigator.pushNamed(context, Routes.registre),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, Routes.login),
                    child: Text(
                      "Si vous n'avez pas de compte",
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
