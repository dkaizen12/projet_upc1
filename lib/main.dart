import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:projet_upc1/vu_ui/accueil/home_post.dart';
//import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:provider/provider.dart';
import 'services/authentif_serv.dart';
import 'firebase_options.dart';
import 'routes.dart';
import 'present.dart';
import 'vu_ui/accueil/home.dart';
import 'vu_ui/connexion/connexion.dart';
import 'vu_ui/connexion/registre.dart';
import 'vu_ui/favoris/favoris.dart';
import 'vu_ui/parametre/parametre.dart';
import 'vu_ui/profil/profil.dart';
import 'vu_ui/recherche/search.dart';
import 'configuration/app_theme.dart';
import 'configuration/constantes.dart';

// 

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MultiProvider(providers: [
      StreamProvider.value(initialData: null, 
      value : AuthentifServ().user
      ),
    ], child: const MyApp() ,
    )
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constantes.appName,
      debugShowCheckedModeBanner: Constantes.showDebugBanner,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: Routes.present,
      routes: {
        Routes.home: (context) => const MyHomePage(title: "Acceuil"),
        Routes.post: (context) => const MyHomePost(),
        Routes.login: (context) => const login_vieuw(),
        Routes.registre: (context) => const Registre_page(),
        Routes.favoris: (context) => const FavorisVieuw(title: "favoris",),
        Routes.setting: (context) => const SettingVieuw(),
        Routes.search: (context) => const SearchVieuw(),
        Routes.profil: (context) => const ProfilScreen(),
      },
      home: FirstScreenMobile(),
    );
  }
}
