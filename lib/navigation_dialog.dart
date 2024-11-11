import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation Dialogue Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showColorDialog(context);
          },
          child: const Text("Change Color"),
        ),
      ),
    );
  }

  // Menampilkan dialog untuk memilih warna
  _showColorDialog(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Very important question'),
          content: const Text('Please choose a color'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Ubah warna dan perbarui UI menggunakan setState
                setState(() {
                  color = Colors.red.shade700;
                });
                Navigator.pop(context); // Menutup dialog
              },
              child: const Text("Red"),
            ),
            TextButton(
              onPressed: () {
                // Ubah warna dan perbarui UI menggunakan setState
                setState(() {
                  color = Colors.green.shade700;
                });
                Navigator.pop(context); // Menutup dialog
              },
              child: const Text("Green"),
            ),
            TextButton(
              onPressed: () {
                // Ubah warna dan perbarui UI menggunakan setState
                setState(() {
                  color = Colors.blue.shade700;
                });
                Navigator.pop(context); // Menutup dialog
              },
              child: const Text("Blue"),
            ),
            TextButton(
              onPressed: () {
                // Ubah warna dan perbarui UI menggunakan setState
                setState(() {
                  color = Colors.purple.shade700;
                });
                Navigator.pop(context); // Menutup dialog
              },
              child: const Text("Purple"),
            ),
            TextButton(
              onPressed: () {
                // Ubah warna dan perbarui UI menggunakan setState
                setState(() {
                  color = Colors.orange.shade700;
                });
                Navigator.pop(context); // Menutup dialog
              },
              child: const Text("Orange"),
            ),
          ],
        );
      },
    );
  }
}
