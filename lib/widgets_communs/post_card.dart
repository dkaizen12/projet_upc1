import 'package:flutter/material.dart';

class PostTile extends StatefulWidget {
  final String categorie;
  final String titre;
  final String auteur;
  final String date;
  final VoidCallback onTap;

  const PostTile({
    super.key,
    required this.categorie,
    required this.titre,
    required this.auteur,
    required this.date,
    required this.onTap,
  });

  @override
  State<PostTile> createState() => _PostTileState();
}

class _PostTileState extends State<PostTile> {
  bool isFavori = false;

  void _onMenuSelected(String value) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Action : $value")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          widget.categorie,
                          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        widget.titre,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.grey,
                          ),
                          const SizedBox(width: 6),
                          Text(widget.auteur, style: const TextStyle(fontWeight: FontWeight.bold)),
                          const SizedBox(width: 10),
                          Text(widget.date, style: const TextStyle(fontSize: 12, color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    PopupMenuButton<String>(
                      icon: const Icon(Icons.more_vert),
                      onSelected: _onMenuSelected,
                      itemBuilder: (context) => const [
                        PopupMenuItem(value: 'masquer', child: Text('Masquer')),
                        PopupMenuItem(value: 'bloquer', child: Text('Bloquer')),
                        PopupMenuItem(value: 'signaler', child: Text('Signaler')),
                      ],
                    ),
                    IconButton(
                      icon: Icon(
                        isFavori ? Icons.bookmark : Icons.bookmark_border,
                        color: isFavori ? Colors.green : Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          isFavori = !isFavori;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
            const Divider(thickness: 0.5),
          ],
        ),
      ),
    );
  }
}