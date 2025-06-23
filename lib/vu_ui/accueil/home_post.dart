import 'package:flutter/material.dart';
import 'package:projet_upc1/configuration/app_colors.dart';
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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1),
            child: Text(
              "Hi, User",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
          ),
          Divider(height: 0.8, color: AppColors.divider),
          TabBar(
            tabs: const [
              Tab(text: "Pour toi"),
              Tab(text: "Populaire"),
              Tab(text: "Abonnement"),
              Tab(text: "Mes post"),
            ],
          ),

          //contenue des onglets
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text("Pour toi")),
                  Center(child: Text("Populaire")),
                  Center(child: Text("Abonnement")),
                  Center(child: Text("Mes posts")),
                ],
              ),)
        ],
      ),
    );
  }
}
