import 'package:flutter/material.dart';
import '../widgets/chat_tile.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Cinco instancias del mismo widget ChatTile con datos distintos.
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 8),
      children: const [
        ChatTile(
          name: 'Laura Beats',
          lastMessage: '¿Vamos al concierto de Mon Laferte el sábado?',
          time: '10:42',
          avatarUrl: 'https://i.pravatar.cc/150?img=5',
          unread: 3,
        ),
        ChatTile(
          name: 'DJ Camilo',
          lastMessage: 'Te mando el cover de Mago de Oz en un rato',
          time: '09:15',
          avatarUrl: 'https://i.pravatar.cc/150?img=12',
          unread: 1,
        ),
        ChatTile(
          name: 'Banda Los Ecos',
          lastMessage: 'Ensayo confirmado: tocamos Don Tetto',
          time: 'Ayer',
          avatarUrl: 'https://i.pravatar.cc/150?img=33',
        ),
        ChatTile(
          name: 'Sofía Vinilos',
          lastMessage: 'Encontré el vinilo de Mago de Oz 🎶',
          time: 'Ayer',
          avatarUrl: 'https://i.pravatar.cc/150?img=47',
          unread: 2,
        ),
        ChatTile(
          name: 'Andrés Guitarra',
          lastMessage: 'Gracias por la playlist, está genial',
          time: 'Lun',
          avatarUrl: 'https://i.pravatar.cc/150?img=15',
        ),
        ChatTile(
          name: 'Club de Jazz',
          lastMessage: 'Nueva fecha: viernes 8 pm',
          time: 'Dom',
          avatarUrl: 'https://i.pravatar.cc/150?img=60',
        ),
      ],
    );
  }
}
