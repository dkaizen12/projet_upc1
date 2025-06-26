import 'package:flutter/material.dart';
import 'package:projet_upc1/configuration/app_colors.dart';
import 'package:projet_upc1/routes.dart';
import '../../services/authentif_serv.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../controls/controlProviderTheme.dart';
import 'package:provider/provider.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool click = false;
  bool Click1 = false;
  void onClick(bool a) {
    setState(() {
      click = a;
    });
  }

  void onClick1(bool b) {
    setState(() {
      Click1 = b;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4, top: 3),
            child: Text(
              "Paramètres",
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Divider(thickness: 1, color: AppColors.divider, height: 0.5),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profil"),
            onTap: () {
              Navigator.pushNamed(context, Routes.profilset);
            },
          ),
          ListTile(
            title: Text("Thème"),
            trailing: Consumer<ThemeProvider>(
              builder:
                  (context, themeProvider, _) => Switch(
                    value: themeProvider.isDarkMode,
                    onChanged: (value) {
                      themeProvider.toggleTheme(value);
                    },
                  ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.notifications_none),
            title: Text("Notifications"),
            trailing: Switch(value: Click1, onChanged: onClick1),
          ),
          ListTile(
            leading: Icon(Icons.help_center_outlined),
            title: Text("Centre d'aide"),
            onTap: () {
              Navigator.pushNamed(context, Routes.aide);
            },
          ),
          ListTile(
            leading: Icon(Icons.view_list_outlined),
            title: Text("Politique de confidentialité"),
            onTap: () {
              Navigator.pushNamed(context, Routes.politique);
            },
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text("A propos de l'application"),
            onTap: () {
              Navigator.pushNamed(context, Routes.apropos);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout_outlined, color: AppColors.accent),
            title: Text("Deconnecter"),
            onTap: () async {
              await AuthService().signOut();
              // Optionnel : Efface aussi le cache local si on utilise SharedPreferences
              final prefs = await SharedPreferences.getInstance();
              await prefs.remove('user_model');
              Navigator.pushNamed(context, Routes.registre);
            },
          ),
        ],
      ),
    );
  }
}
