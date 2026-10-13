import 'package:flutter/material.dart';
import '../widgets/post_card.dart';
import '../widgets/promotional_banner.dart';
import '../widgets/image_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ListView vertical: toda la pantalla se puede desplazar.
    return ListView(
      children: const [
        PromotionalBanner(
          title: 'Festival Ritmo 2026',
          description: 'Mon Laferte, Mago de Oz y Don Tetto en un solo lugar.',
          icon: Icons.headphones,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 8),
          child: Text('Artistas para ti', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        ImageCarousel(),
        SizedBox(height: 16),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 4),
          child: Text('Publicaciones', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        PostCard(
          userName: 'Laura Beats',
          avatarUrl: 'https://i.pravatar.cc/150?img=5',
          imageUrl: 'https://picsum.photos/seed/concierto/600/400',
          description: 'Qué noche con Mon Laferte anoche. ¡Se me puso la piel de gallina!',
        ),
        PostCard(
          userName: 'DJ Camilo',
          avatarUrl: 'https://i.pravatar.cc/150?img=12',
          imageUrl: 'https://picsum.photos/seed/estudio/600/400',
          description: 'Ensayando un cover de Mago de Oz en el estudio. ¡Folk metal a todo volumen!',
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
