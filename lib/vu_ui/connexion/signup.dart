import 'package:flutter/material.dart';
import '../../configuration/app_colors.dart';
import '../../routes.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: 
      SafeArea(
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
              Column(
                children: [
                  ElevatedButton(
                    child: Text("Connectez-vous avec Google"),
                    onPressed:
                        () => Navigator.pushNamed(context, Routes.registre),
                  ),
                  Divider(),
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