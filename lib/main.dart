import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/chats_screen.dart';
import 'screens/laboratory_screen.dart';

void main() {
  runApp(const RitmoApp());
}


class RitmoApp extends StatelessWidget {
  const RitmoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ritmito',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF7B2FF7),
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: const Color(0xFF14101F),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E1633),
          foregroundColor: Colors.white,
        ),
      ),
      home: const MainScreen(),
    );
  }
}


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0; // 0 = Home, 1 = Chats, 2 = Laboratorio

  String _title() {
    switch (_selectedIndex) {
      case 0:
        return 'Ritmo · Tu música';
      case 1:
        return 'Chats';
      default:
        return 'Laboratorio de widgets';
    }
  }

  Widget _body() {
    switch (_selectedIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return const ChatsScreen();
      default:
        return const LaboratoryScreen();
    }
  }

  List<Widget> _actions() {
    if (_selectedIndex == 0) {
      return [
        IconButton(icon: const Icon(Icons.search), onPressed: () {}),
        IconButton(icon: const Icon(Icons.notifications_none), onPressed: () {}),
      ];
    }
    if (_selectedIndex == 1) {
      return [IconButton(icon: const Icon(Icons.edit_outlined), onPressed: () {})];
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _title(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: _actions(),
      ),
      body: _body(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        backgroundColor: const Color(0xFF1E1633),
        selectedItemColor: const Color(0xFF1ED760),
        unselectedItemColor: Colors.white54,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.science), label: 'Laboratorio'),
        ],
      ),
    );
  }
}
