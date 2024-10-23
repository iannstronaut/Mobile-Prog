import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:linkaja_v2/shared/theme.dart';
import 'package:linkaja_v2/ui/pages/account_page.dart';
import 'package:linkaja_v2/ui/pages/home_page.dart';
import 'package:linkaja_v2/ui/pages/history_page.dart';
import 'package:linkaja_v2/ui/pages/inbox_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.nunitoTextTheme()),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Membuat delay selama 10 detik sebelum pindah ke halaman utama
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainApp()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/icons/ic_linkaja.png"),
            Text("Pede #APA APA BISA",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24.0,
                    color: redTomato))
          ],
        ),
      ),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currentIndex = 0; // Menyimpan index yang dipilih

  final List<Widget> _pages = [
    const HomePage(),
    const HistoryPage(),
    const InboxPage(),
    const AccountPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index; // Memperbarui index yang dipilih
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: _pages[_currentIndex], // Menampilkan halaman sesuai index
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: whiteColor, // Warna untuk BottomAppBar
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey.withOpacity(0.1), // Warna shadow
              spreadRadius: 1,
              blurRadius: 5, // Nilai blur untuk shadow yang lebih halus
              offset: Offset(0, -3), // Posisi shadow
            ),
          ],
        ),
        child: BottomAppBar(
          color: whiteColor,
          height: 68, // Ganti sesuai warna `whiteColor` kamu
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () => _onItemTapped(0),
                    child: Icon(
                      _currentIndex == 0
                          ? CupertinoIcons.house_fill
                          : CupertinoIcons.house,
                      color: _currentIndex == 0
                          ? redTomato // Ganti ke `redTomato`
                          : Colors.grey, // Ganti ke `grayLight`
                    ),
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                      color: _currentIndex == 0
                          ? redTomato // Ganti ke `redTomato`
                          : Colors.grey, // Ganti ke `grayLight`
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () => _onItemTapped(1),
                    child: Icon(
                      Iconsax.activity,
                      color: _currentIndex == 1
                          ? redTomato // Ganti ke `redTomato`
                          : Colors.grey, // Ganti ke `grayLight`
                    ),
                  ),
                  Text(
                    "History",
                    style: TextStyle(
                      color: _currentIndex == 1
                          ? redTomato // Ganti ke `redTomato`
                          : Colors.grey, // Ganti ke `grayLight`
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 40), // Ruang untuk tombol scan
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () => _onItemTapped(2),
                    child: Icon(
                      _currentIndex == 2
                          ? CupertinoIcons.mail
                          : CupertinoIcons.mail_solid,
                      color: _currentIndex == 2
                          ? redTomato // Ganti ke `redTomato`
                          : Colors.grey, // Ganti ke `grayLight`
                    ),
                  ),
                  Text(
                    "Inbox",
                    style: TextStyle(
                      color: _currentIndex == 2
                          ? redTomato // Ganti ke `redTomato`
                          : Colors.grey, // Ganti ke `grayLight`
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () => _onItemTapped(3),
                    child: Icon(
                      Iconsax.people,
                      color: _currentIndex == 3
                          ? redTomato // Ganti ke `redTomato`
                          : Colors.grey, // Ganti ke `grayLight`
                    ),
                  ),
                  Text(
                    "Account",
                    style: TextStyle(
                      color: _currentIndex == 3
                          ? redTomato // Ganti ke `redTomato`
                          : Colors.grey, // Ganti ke `grayLight`
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Transform.translate(
        offset: Offset(0, 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed:
                  () {}, // Fungsi scan (tidak perlu logic untuk saat ini)
              backgroundColor: redTomato, // Ganti ke `redTomato`
              child: Icon(
                Icons.qr_code_scanner,
                size: 32,
                color: whiteColor,
              ), // Memperbesar ikon
              elevation: 5.0, // Tambahkan bayangan agar lebih menonjol
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            const SizedBox(height: 5), // Jarak antara tombol scan dan label
            Text(
              "Pay",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerDocked, // Menjorok keluar di tengah
    );
  }
}
