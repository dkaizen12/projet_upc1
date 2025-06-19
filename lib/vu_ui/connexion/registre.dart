import 'package:flutter/material.dart';
//page d'enregistrement

class Registre_vieuw extends statefullWidget {
  const MyHomePage({super.key, required this.email, required this.password});
  String email ;
  String password;
  @override
  State<Registre_vieuw> createState() => _Registre_vieuw();
}

class _Registre_vieuw extends statefullWideget {

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar : AppBar (),
      body : center(
        TextField
      ),

    );
  }
}