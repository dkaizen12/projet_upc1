import 'package:flutter/material.dart';

class SearchVieuw extends StatefulWidget {
  const SearchVieuw({super.key});

  @override
  State<SearchVieuw> createState() => _SearchVieuwState();
}

class _SearchVieuwState extends State<SearchVieuw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tapez votre recherche"),
        leading: Icon(Icons.search),
      ),
    );
  }
}