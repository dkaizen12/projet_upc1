import 'package:flutter/material.dart';
//import 'package:projet_upc1/configuration/app_colors.dart';
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
          Text("Paramètres"),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profil"),
            onTap: () {},
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
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.view_list_outlined),
            title: Text("Politique de confidentialité"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text("A propos de l'application"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.logout_outlined, color: Colors.red),
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
