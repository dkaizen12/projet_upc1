class User {
  final String id;
  final String authorId;
  final String title;
  final String content;
  final DateTime createdAt;

  User({
    required this.id,
    required this.authorId,
    required this.title,
    required this.content,
    required this.createdAt,
  });
}