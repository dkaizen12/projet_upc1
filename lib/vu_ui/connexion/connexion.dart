import 'package:flutter/material.dart';
//page de connexion

class login_vieuw extends statefullWidget {
  const login_vieuw({super.key, required this.email, required this.password});
  String email ;
  String password;
  @override
  State<login_vieuw> createState() => _login_vieuw();
}

class _login_vieuw extends statefullWideget {

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar : AppBar (BackgroungColor : colors.red),
      body : center(),
    );
  }
}