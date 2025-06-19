import 'package:flutter/material.dart';
//page d'enregistrement

class Registre_page extends StatefulWidget {
  const Registre_page({super.key});

  @override
  State<Registre_page> createState() => _Registre_pageState();
}

class _Registre_pageState extends State<Registre_page> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Bienvenu sur Stories +243"), 
        TextField(minLines: 100,)
      ],
    );
  }
}
