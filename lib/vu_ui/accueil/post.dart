import 'package:flutter/material.dart';
import '../../model_data/comment.dart';

class Post extends StatefulWidget {
  final String nom;
  final String titre;
  final String contenu;
  final String date;
  final String? photoUrl;

  const Post({
    super.key,
    required this.nom,
    required this.titre,
    required this.contenu,
    required this.date,
    this.photoUrl,
  });

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  bool isLiked = false;
  bool isFollowed = true;
  int likeCount = 100000;

  final List<CommentModel> comments = [
    CommentModel(nom: "Alice", likes: 3, comment: "Super analyse 👏", photoUrl: null),
    CommentModel(nom: "John", likes: 1, comment: "Intéressant 🤔", photoUrl: null),
  ];

  void showComments() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => DraggableScrollableSheet(
        expand: false,
        builder: (context, scrollController) => Container(
          padding: const EdgeInsets.all(16),
          child: ListView.builder(
            controller: scrollController,
            itemCount: comments.length,
            itemBuilder: (context, index) {
              final c = comments[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: c.photoUrl != null ? NetworkImage(c.photoUrl!) : null,
                ),
                title: Text(c.nom),
                subtitle: Text(c.comment),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.thumb_up_alt_outlined, size: 18),
                    const SizedBox(width: 4),
                    Text('${c.likes}'),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void sharePost() {
    // Ajoute `share_plus` si tu veux partager réellement
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Fonction de partage à implémenter")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // 🔹 Image bannière
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: widget.photoUrl != null
                      ? DecorationImage(
                          image: NetworkImage(widget.photoUrl!),
                          fit: BoxFit.cover,
                        )
                      : null,
                ),
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(8),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.black,
                  onPressed: () => Navigator.pop(context),
                ),
              ),

              // 🔹 Carte principale
              Container(
                margin: const EdgeInsets.all(12),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Badge
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text("Game",
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 12),

                    // 🔹 Titre
                    Text(
                      widget.titre,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    ),
                    const SizedBox(height: 8),

                    // 🔹 Auteur + date
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => ProfilScreen(nom: widget.nom)),
                            );
                          },
                          child: const CircleAvatar(radius: 12, backgroundColor: Colors.grey),
                        ),
                        const SizedBox(width: 8),
                        Text(widget.nom, style: const TextStyle(fontWeight: FontWeight.w500)),
                        const SizedBox(width: 8),
                        TextButton(
                          onPressed: () {
                            setState(() => isFollowed = !isFollowed);
                          },
                          child: Text(isFollowed ? "Suivi" : "Suivre",
                              style: const TextStyle(fontSize: 12)),
                        ),
                        const Spacer(),
                        Text(widget.date,
                            style: const TextStyle(fontSize: 12, color: Colors.grey)),
                      ],
                    ),
                    const Divider(height: 20),

                    // 🔹 Contenu
                    Text(
                      widget.contenu,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(fontSize: 14, height: 1.5),
                    ),

                    const SizedBox(height: 20),
                  ],
                ),
              ),

              // 🔹 Barre d’interaction
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: Icon(
                        isLiked ? Icons.thumb_up : Icons.thumb_up_outlined,
                        color: isLiked ? Colors.blue : Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          isLiked = !isLiked;
                          likeCount += isLiked ? 1 : -1;
                        });
                      },
                    ),
                    Text("$likeCount aimés"),

                    IconButton(
                      icon: const Icon(Icons.comment_outlined),
                      onPressed: showComments,
                    ),
                    Text("${comments.length} commentaires"),

                    IconButton(
                      icon: const Icon(Icons.share),
                      onPressed: sharePost,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}


//  Exemple profil redirection
class ProfilScreen extends StatelessWidget {
  final String nom;

  const ProfilScreen({super.key, required this.nom});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profil de $nom")),
      body: Center(child: Text("Détail du profil de $nom")),
    );
  }
}

