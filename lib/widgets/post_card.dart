import 'package:flutter/material.dart';
import 'safe_image.dart';

// Widget personalizado: una publicación estilo red social.
// Recibe los datos por parámetros, así se reutiliza con información distinta.
class PostCard extends StatefulWidget {
  final String userName;
  final String avatarUrl;
  final String imageUrl;
  final String description;

  const PostCard({
    super.key,
    required this.userName,
    required this.avatarUrl,
    required this.imageUrl,
    required this.description,
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool _liked = false; // variable que guarda si ya se pulsó "Me gusta"

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1633),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                ClipOval(
                  child: SafeImage(url: widget.avatarUrl, width: 40, height: 40),
                ),
                const SizedBox(width: 10),
                Text(
                  widget.userName,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ),
          SafeImage(url: widget.imageUrl, width: double.infinity, height: 200),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
            child: Text(widget.description),
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(
                  _liked ? Icons.favorite : Icons.favorite_border,
                  color: _liked ? Colors.redAccent : Colors.white70,
                ),
                onPressed: () {
                  setState(() {
                    _liked = !_liked;
                  });
                },
              ),
              IconButton(
                icon: const Icon(Icons.mode_comment_outlined, color: Colors.white70),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
