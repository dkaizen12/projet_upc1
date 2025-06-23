import 'package:flutter/material.dart';
//import 'package:projet_upc1/configuration/app_colors.dart';
import 'package:projet_upc1/routes.dart';
//import 'signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: ()=> Navigator.pushNamed(context, Routes.home), child: Text("Connexion")),
      ),
    );
  }
}