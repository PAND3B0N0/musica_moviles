import 'package:flutter/material.dart';
import 'safe_image.dart';

// Carrusel horizontal de álbumes: ListView con scrollDirection horizontal.
class ImageCarousel extends StatelessWidget {
  const ImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: const [
          _AlbumCard(title: 'Mon Laferte', url: 'https://picsum.photos/seed/monlaferte/300/300'),
          _AlbumCard(title: 'Mago de Oz', url: 'https://picsum.photos/seed/magodeoz/300/300'),
          _AlbumCard(title: 'Don Tetto', url: 'https://picsum.photos/seed/dontetto/300/300'),
          _AlbumCard(title: 'Rock en español', url: 'https://picsum.photos/seed/rockespanol/300/300'),
        ],
      ),
    );
  }
}

// Tarjeta privada que usa el carrusel (solo se ve dentro de este archivo).
class _AlbumCard extends StatelessWidget {
  final String title;
  final String url;

  const _AlbumCard({required this.title, required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1633),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFF1ED760), width: 1.5),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: SafeImage(url: url, width: 140, height: 125),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
