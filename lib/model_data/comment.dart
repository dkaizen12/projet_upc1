class CommentModel {
  final int? id; // id est optionnel pour l’insertion
  final String nom;
  final int likes;
  final String comment;
  final String? photoUrl;

  CommentModel({
    this.id,
    required this.nom,
    required this.likes,
    required this.comment,
    this.photoUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nom': nom,
      'likes': likes,
      'comment': comment,
      'photoUrl': photoUrl,
    };
  }

  factory CommentModel.fromMap(Map<String, dynamic> map) {
    return CommentModel(
      id: map['id'],
      nom: map['nom'],
      likes: map['likes'],
      comment: map['comment'],
      photoUrl: map['photoUrl'],
    );
  }
}