//import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
//import 'package:projet_upc1/vu_ui/connexion/registre.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:google_sign_in/google_sign_in.dart';
import 'services/authentif_serv.dart';
//import 'package:projet_upc1/vu_ui/connexion/registre.dart';
import 'routes.dart';
import 'configuration/app_colors.dart';
//import 'configuration/app_theme.dart';


class FirstScreenMobile extends StatefulWidget {
  const FirstScreenMobile({super.key});

  @override
  State<FirstScreenMobile> createState() => _FirstScreenMobileState();
}

class _FirstScreenMobileState extends State<FirstScreenMobile> {
  bool enChargement = false;
  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    //final width = MediaQuery.of(context).size.width;
    //final height = MediaQuery.of(context).size.height;
    //final double iconSize = width * 0.25;
    //final double textSize = width * 0.06;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)
                  ),
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage('lib/assets/images/page1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                'Stories +243',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontStyle: FontStyle.italic
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Rire, informer, debattre, faire reflechir, \n Decouvrir Kinshasa comme jamais auparavent',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.normal,
                    fontFamily: "poppins",
                    
                  ),
                ),
              ),
               ElevatedButton(
                    style: ButtonStyle(
                    ),
                    child: Text("Commencez"),
                    onPressed: () => Navigator.pushNamed(context, Routes.registre)
                  ),
            ],
          ),
        ),
      ),
    );
  }

  signin() {
    setState(() {
      enChargement = true;
      AuthentifServ().inscriptiongoogle();
    });
  }
}
