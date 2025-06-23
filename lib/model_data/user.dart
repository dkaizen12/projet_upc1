class UserModel {
  final int? id; // id est optionnel pour l’insertion
  final String nom;
  final String email;
  final String password;
  final int likes;
  final int abonnes;
  final int abonnements;
  final String? photoUrl;
  final List<String> posts;

  UserModel({
    this.id,
    required this.nom,
    required this.email,
    required  this.password,
    required this.likes,
    required this.abonnes,
    required this.abonnements,
    this.photoUrl,
    required this.posts,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nom': nom,
      'email': email,
      'password': password,
      'likes': likes,
      'abonnes': abonnes,
      'abonnements': abonnements,
      'photoUrl': photoUrl,
      'posts': posts.join('|'),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      nom: map['nom'],
      email: map['email'],
      password: map['password'],
      likes: map['likes'],
      abonnes: map['abonnes'],
      abonnements: map['abonnements'],
      photoUrl: map['photoUrl'],
      posts: (map['posts'] as String).split('|'),
    );
  }
}
