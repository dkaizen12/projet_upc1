import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:projet_upc1/services/authentif_serv.dart';
import 'package:projet_upc1/vu_ui/accueil/home_post.dart';
//import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
//import 'services/authentif_serv.dart';
//import 'firebase_options.dart';
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
import 'vu_ui/parametre/apropos.dart';
import 'vu_ui/parametre/politique.dart';
import 'vu_ui/parametre/profilset.dart';
import 'vu_ui/parametre/helpcenter.dart';
import 'controls/controlProvideruser.dart';
import 'model_data/user.dart';
import 'controls/controlProviderTheme.dart';
//

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

 // final user = FirebaseAuth.instance.currentUser;
  final savedUser = await AuthService().loadUserFromLocal();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) =>  UserProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: MyApp(initialUser: savedUser),
    ),
  );
}

class MyApp extends StatelessWidget {

  final UserModel? initialUser;

  const MyApp({super.key, this.initialUser});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
        if (initialUser != null) {
      Provider.of<UserProvider>(context, listen: false).setUser(initialUser!);
    }
    return MaterialApp(
      title: Constantes.appName,
      debugShowCheckedModeBanner: Constantes.showDebugBanner,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: themeProvider.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      initialRoute: Routes.present,
      routes: {
        Routes.home: (context) => const MyHomePage(title: "Acceuil"),
        Routes.post: (context) => const MyHomePost(),
        Routes.login: (context) => const login_vieuw(),
        Routes.registre: (context) => const Registre_page(),
        Routes.favoris: (context) => const FavorisVieuw(title: "favoris"),
        Routes.setting: (context) => const SettingVieuw(),
        Routes.search: (context) => const SearchVieuw(),
        Routes.profil: (context) => const ProfilScreen(),
        Routes.aide: (context) => const HelpCenter(),
        Routes.profilset: (context) => const ProfilSetting(),
        Routes.politique: (context) => const Politique(),
        Routes.apropos: (context) => const Apropros(),
      },
      home: FirebaseAuth.instance.currentUser != null        
       ? const MyHomePage(title: "Bonjour",)
          : const FirstScreenMobile(),
      
    );
  }
}
