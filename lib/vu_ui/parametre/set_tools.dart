import 'package:flutter/material.dart';
import 'package:projet_upc1/configuration/app_colors.dart';
import 'package:projet_upc1/routes.dart';

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
          Padding(padding: EdgeInsets.only(left: 4, top: 3), 
          child:Text("Paramètres", style: TextStyle(
            color: AppColors.textPrimary, 
            fontSize: 25, 
            fontWeight: FontWeight.w600
          ),) ,
          ),
          const Divider(
            thickness: 1,
            color: AppColors.divider,
            height: 0.5,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profil"),
            onTap: () => ProfilSetting(),
          ),
          ListTile(
            leading: Icon(Icons.format_paint_outlined),
            title: Text("Thème"),
            trailing: Switch(value: click, onChanged: onClick),
          ),
          ListTile(
            leading: Icon(Icons.notifications_none),
            title: Text("Notifications"),
            trailing: Switch(value: Click1, onChanged: onClick1),
          ),
          ListTile(
            leading: Icon(Icons.help_center_outlined),
            title: Text("Centre d'aide"),
            onTap: () => HelpCenter(),
          ),
          ListTile(
            leading: Icon(Icons.view_list_outlined),
            title: Text("Politique de confidentialité"),
            onTap: () => Politique(),
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text("A propos de l'application"),
            onTap: () => Apropros(),
          ),
          ListTile(
            leading: Icon(Icons.logout_outlined, color: AppColors.accent),
            title: Text("Deconnecter"),
            onTap: () {
              Navigator.pushNamed(context, Routes.registre);
            },
          ),
        ],
      ),
    );
  }
}

class ProfilSetting extends StatefulWidget {
  const ProfilSetting({super.key});

  @override
  State<ProfilSetting> createState() => _ProfilSettingState();
}

class _ProfilSettingState extends State<ProfilSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Mon profil"),
    );
  }
}

class HelpCenter extends StatelessWidget {
  const HelpCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Centre d'aide"),
    );
  }
}

class Politique extends StatelessWidget {
  const Politique({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Politique de confidentialité"),
    );
  }
}

class Apropros extends StatelessWidget {
  const Apropros({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("A propos de l'application"),
    );
  }
}