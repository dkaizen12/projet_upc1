//import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
//import 'package:projet_upc1/vu_ui/connexion/registre.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:google_sign_in/google_sign_in.dart';
import 'services/authentif_serv.dart';
//import 'package:projet_upc1/vu_ui/connexion/registre.dart';
import 'routes.dart';
import 'widgets_communs/responsive.dart';
import 'configuration/app_colors.dart';
//import 'configuration/app_theme.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: FirstScreenMobile(),
      tablet: TabletFirstScreen(),
      orientation: PaysageScreen(),
    );
  }
}

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
               ElevatedButton(
                    child: Text("Connectez-vous avec Google"),
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

class TabletFirstScreen extends StatefulWidget {
  const TabletFirstScreen({super.key});

  @override
  State<TabletFirstScreen> createState() => _TabletFirstScreenState();
}

class _TabletFirstScreenState extends State<TabletFirstScreen> {
  bool enCharge = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 🔹 Image en arrière-plan*
        Expanded(
          child: Container(
            // height: height * 0.5,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/images/page1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        // 🔹 Contenu par-dessus
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.20,
          ),
          child: Container(
            width: 300,
            height: 700,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
            child: Column(
              children: [
                Text(
                  'Stories +243',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    'Rire, informer, débattre, faire réfléchir, \nDécouvrir Kinshasa comme jamais auparavant',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton.icon(
                      onPressed: ()=> Navigator.pushNamed(context, Routes.registre),
                      icon: const Icon(Icons.login),
                      label: const Text("Connectez-vous avec Google"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black87,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }

  signin() {
    setState(() {
      enCharge = true;
      AuthentifServ().inscriptiongoogle();
    });
  }
}

class PaysageScreen extends StatefulWidget {
  const PaysageScreen({super.key});

  @override
  State<PaysageScreen> createState() => _PaysageScreenState();
}

class _PaysageScreenState extends State<PaysageScreen> {
  bool enChargement1 = false;
  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    //final width = MediaQuery.of(context).size.width;
    //final height = MediaQuery.of(context).size.height;
    //final double iconSize = width * 0.25;
    //final double textSize = width * 0.06;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // 🔹 Image en arrière-plan*
          Expanded(
            child: Container(
              // height: height * 0.5,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/images/page1.jpg'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          // 🔹 Contenu par-dessus
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.20,
            ),
            child: Container(
              width: 300,
              height: 700,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Text(
                    'Stories +243',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text(
                      'Rire, informer, débattre, faire réfléchir, \nDécouvrir Kinshasa comme jamais auparavant',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

                 ElevatedButton.icon(
                        onPressed: ()=> Navigator.pushNamed(context, Routes.registre),
                        icon: const Icon(Icons.login),
                        label: const Text("Connectez-vous avec Google"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black87,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 12,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  signin() {
    setState(() {
      enChargement1 = true;
      AuthentifServ().inscriptiongoogle();
    });
  }
}