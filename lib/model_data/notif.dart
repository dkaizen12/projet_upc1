class NotifModel {
  final int? id; // id est optionnel pour l’insertion
  final String nom;
  final String at;
  final bool lu;
  final String title;
  final String message;
  final String? photoUrl;

  NotifModel({
    this.id,
    required this.nom,
    required this.at,
    required this.lu,
    required this.title,
    required this.message,
    this.photoUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nom': nom,
      'at': at,
      'lu': lu,
      'title': title,
      'message': message,
      'photoUrl': photoUrl,
    };
  }

  factory NotifModel.fromMap(Map<String, dynamic> map) {
    return NotifModel(
      id: map['id'],
      nom: map['nom'],
      at: map['at'],
      lu: map['lu'],
      title: map['title'],
      message: map['message'],
      photoUrl: map['photoUrl'],
    );
  }
}
