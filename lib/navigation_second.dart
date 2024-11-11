import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  final Color initialColor;

  const NavigationSecond({super.key, required this.initialColor});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  late Color color;

  @override
  void initState() {
    super.initState();
    // Set warna awal berdasarkan warna yang dikirim dari NavigationFirst
    color = widget.initialColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text("Navigation Second Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                // Ubah warna menjadi merah dan kembalikan ke halaman sebelumnya
                Navigator.pop(context, Colors.red.shade700);
              },
              child: const Text("Red"),
            ),
            ElevatedButton(
              onPressed: () {
                // Ubah warna menjadi hijau dan kembalikan ke halaman sebelumnya
                Navigator.pop(context, Colors.green.shade700);
              },
              child: const Text("Green"),
            ),
            ElevatedButton(
              onPressed: () {
                // Ubah warna menjadi biru dan kembalikan ke halaman sebelumnya
                Navigator.pop(context, Colors.blue.shade700);
              },
              child: const Text("Blue"),
            ),
            ElevatedButton(
              onPressed: () {
                // Ubah warna menjadi biru dan kembalikan ke halaman sebelumnya
                Navigator.pop(context, Colors.purple.shade700);
              },
              child: const Text("Purple"),
            ),
            ElevatedButton(
              onPressed: () {
                // Ubah warna menjadi biru dan kembalikan ke halaman sebelumnya
                Navigator.pop(context, Colors.orange.shade700);
              },
              child: const Text("Orange"),
            ),
          ],
        ),
      ),
    );
  }
}
