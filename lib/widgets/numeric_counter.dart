import 'package:flutter/material.dart';

// Control de volumen: variable int modificada con botones y setState().
class NumericCounter extends StatefulWidget {
  const NumericCounter({super.key});

  @override
  State<NumericCounter> createState() => _NumericCounterState();
}

class _NumericCounterState extends State<NumericCounter> {
  int _volume = 5; // variable numérica, límites entre 0 y 10

  IconData _volumeIcon() {
    if (_volume == 0) return Icons.volume_off;
    if (_volume <= 4) return Icons.volume_down;
    return Icons.volume_up;
  }

  void _increase() {
    setState(() {
      if (_volume < 10) _volume++;
    });
  }

  void _decrease() {
    setState(() {
      if (_volume > 0) _volume--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1633),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFF7B2FF7), width: 2),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(_volumeIcon(), size: 64, color: const Color(0xFF1ED760)),
          const SizedBox(height: 12),
          Text(
            '$_volume',
            style: const TextStyle(fontSize: 56, fontWeight: FontWeight.bold),
          ),
          const Text('Volumen (0 - 10)', style: TextStyle(color: Colors.white60)),
          const SizedBox(height: 16),
          LinearProgressIndicator(
            value: _volume / 10,
            minHeight: 10,
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xFF1ED760),
            backgroundColor: Colors.white12,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: _decrease,
                icon: const Icon(Icons.remove),
                label: const Text('Bajar'),
              ),
              ElevatedButton.icon(
                onPressed: _increase,
                icon: const Icon(Icons.add),
                label: const Text('Subir'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
