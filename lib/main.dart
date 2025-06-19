import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'routes.dart';
//import 'package:path/path.dart';
//import 'vu_ui/accueil/home.dart';
import 'present.dart';
import 'vu_ui/accueil/home.dart';
import 'vu_ui/accueil/post_details.dart';
import 'vu_ui/connexion/connexion.dart';
import 'vu_ui/connexion/registre.dart';
import 'vu_ui/favoris/favoris.dart';
import 'vu_ui/notification/notif.dart';
import 'vu_ui/parametre/parametre.dart';
import 'vu_ui/profil/profil.dart';
import 'vu_ui/recherche/search.dart';

// ...

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stories +243',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
        initialRoute: Routes.present,
  routes: {
    Routes.home: (context) => const MyHomePage(title: "Acceuil"),
    Routes.post: (context) => const PostDetails(),
    Routes.login: (context) => const login_vieuw(),
    Routes.registre : (context) => const Registre_page(),
    Routes.favoris: (context) => const FavorisVieuw(),
    Routes.notif: (context) => const NotifVieuw(),
    Routes.setting: (context) => const SettingVieuw(),
    Routes.search: (context) => const SearchVieuw(),
    Routes.profil: (context) => const ProfilScreen(),
  },
      home: FirstScreen(),
    );
  }
}