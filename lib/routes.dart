import 'package:flutter/material.dart';
//import 'package:path/path.dart';
import 'vu_ui/accueil/home.dart';

//fichier des routes de l'application
class routesNav extends StatelessWidget {
  const routesNav({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // MaterialApp contains our top-level Navigator
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const MyHomePage(title: "acceuil",),
       // '/signup': (BuildContext context) => const SignUpPage(),
      },
    );
  }
}