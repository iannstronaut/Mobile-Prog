import 'package:flutter/material.dart';
import 'package:praktikum11/navigation_second.dart';

class NavigationFirst extends StatefulWidget {
  const NavigationFirst({super.key});

  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State<NavigationFirst> {
  Color color = Colors.blue.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // Navigasi ke halaman kedua dan menunggu hasil warna yang dipilih
            final selectedColor = await _navigateAndGetColor(context);
            if (selectedColor != null) {
              setState(() {
                color = selectedColor;
              });
            }
          },
          child: const Text('Change Color'),
        ),
      ),
    );
  }

  Future<Color?> _navigateAndGetColor(BuildContext context) async {
    // Mengirim warna saat ini ke NavigationSecond
    return await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NavigationSecond(initialColor: color),
      ),
    );
  }
}
