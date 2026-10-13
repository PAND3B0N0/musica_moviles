import 'package:flutter/material.dart';

// Muestra una imagen de internet y, si falla (sin conexión),
// dibuja un recuadro con un icono para que la app no se vea rota.
class SafeImage extends StatelessWidget {
  final String url;
  final double? width;
  final double? height;

  const SafeImage({super.key, required this.url, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      width: width,
      height: height,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return Container(
          width: width,
          height: height,
          color: const Color(0xFF2D2347),
          child: const Icon(Icons.music_note, color: Colors.white38, size: 40),
        );
      },
    );
  }
}
