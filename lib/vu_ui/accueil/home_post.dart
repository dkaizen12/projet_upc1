import 'package:flutter/material.dart';
//import 'package:projet_upc1/configuration/app_colors.dart';
//import 'package:projet_upc1/routes.dart';

class MyHomePost extends StatefulWidget {
  const MyHomePost({super.key});

  @override
  State<MyHomePost> createState() => _MyHomePostState();
}

class _MyHomePostState extends State<MyHomePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("home"),),
    );
  }
}