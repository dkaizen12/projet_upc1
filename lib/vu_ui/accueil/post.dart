import 'package:flutter/material.dart';
import 'package:projet_upc1/configuration/app_colors.dart';
//import 'package:projet_upc1/routes.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _FavPostState();
}

class _FavPostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    //final width = MediaQuery.of(context).size.width;
    return Scaffold(body: Column(children: [
      Padding(padding: EdgeInsets.only(top: 4, left: 8), 
      child: Text("Mon post"),
      ),
      Divider(height: 0.8, color: AppColors.divider),
      Text("Le post")
    ]));
  }
}