import 'package:flutter/material.dart';

// Banner promocional independiente, con color de fondo propio.
class PromotionalBanner extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  const PromotionalBanner({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF7B2FF7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 6),
                Text(description),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1ED760),
                    foregroundColor: Colors.black,
                  ),
                  child: const Text('Escuchar ahora'),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Icon(icon, size: 70, color: Colors.white),
        ],
      ),
    );
  }
}
