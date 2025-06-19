import 'package:flutter/material.dart';

class FavorisVieuw extends StatefulWidget {
  const FavorisVieuw({super.key});

  @override
  State<FavorisVieuw> createState() => _FavorisVieuwState();
}

class _FavorisVieuwState extends State<FavorisVieuw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("favoris"),
    );
  }
}