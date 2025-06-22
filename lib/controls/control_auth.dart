import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:projet_upc1/present.dart';
import 'package:projet_upc1/vu_ui/accueil/home.dart';
import 'package:provider/provider.dart';

class ControlAuth extends StatelessWidget {
  const ControlAuth({super.key});

  @override
  Widget build(BuildContext context) {
    final _user = Provider.of<User?>(context);
    if (_user == null) {
      return FirstScreen();
    } else {
      return MyHomePage(title: "Bonjour");
    }
  }
}
