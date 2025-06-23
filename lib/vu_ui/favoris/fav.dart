import 'package:flutter/material.dart';
//import 'package:projet_upc1/configuration/app_colors.dart';
//import 'package:projet_upc1/routes.dart';

class FavPost extends StatefulWidget {
  const FavPost({super.key});

  @override
  State<FavPost> createState() => _FavPostState();
}

class _FavPostState extends State<FavPost> {
  @override
  Widget build(BuildContext context) {
    //final width = MediaQuery.of(context).size.width;
    return Scaffold(body: Column(children: [
      Center(
        child: Text("Tes favoris", style: TextStyle(
          color: Colors.amber,
        ),),
      )
      
    ]));
  }
}
