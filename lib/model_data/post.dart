//import 'package:projet_upc1/widgets_communs/post_card.dart';

class PostModel {
  final int? id; // id est optionnel pour l’insertion
  final String nom;
  final String theme;
  final String Title;
  final String at;
  final bool suivi;
  final int likes;
  final int Comment;
  final bool favoris;
  final String? photoPost;
  final String? photoUser;
  final String postContent;

  PostModel({
    this.id,
    required this.nom,
    required this.theme,
    required this.Title,
    required this.at, 
    required this.suivi,
    required this.likes,
    required this.Comment,
    required this.favoris,
    this.photoPost,
    this.photoUser,
    required this.postContent,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nom': nom,
      'theme': theme,
      'title': Title,
      'at': at,
      'suivi': suivi,
      'likes': likes,
      'comment': Comment,
      'favoris': favoris,
      'photoPost' : photoPost,
      'photoUser' : photoUser,
      'postContent' : postContent
    };
  }

  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      id :map['id'],
      nom : map['nom'] ,
      theme : map['theme'],
      Title : map['title'],
      at : map['at'],
      suivi : map['suivi'],
      likes : map['likes'],
      Comment : map ['Comment'],
      favoris: map['favoris'],
      photoPost : map['photoPost'],
      photoUser : map['photoUser'],
      postContent : map['postContent']
    );
  }
}
