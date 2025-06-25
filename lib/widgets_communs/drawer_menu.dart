import 'package:flutter/material.dart';
import '../configuration/app_colors.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: AppColors.primary,
        width: 200,
        child: ListView(
          children: [
            ListTile(title: Text("Notification", style: TextStyle(
              fontSize: 20, 
            ),),), 
            ListTile(
              trailing: Icon(Icons.notification_add),
              title: Text("bienvenu sur  l'app"),
              subtitle: Text("by dady"),
              leading: Image.asset("lib/assets/icon_logo/Stories.png"),
            )
          ],
        ), 
        );
  }
}