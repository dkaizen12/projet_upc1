import 'package:flutter/material.dart';
import 'package:projet_upc1/lib/vu_ui/acceuil/home.dart';

//fichier des routes de l'application
class routesNav extends stateless {
  const NavigatorExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // MaterialApp contains our top-level Navigator
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const HomePage(),
        '/signup': (BuildContext context) => const SignUpPage(),
      },
    );
  }
}