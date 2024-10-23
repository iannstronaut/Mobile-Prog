import 'package:flutter/material.dart';
import 'package:linkaja_v2/shared/theme.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final double iconSize;
  final Color backgroundColor;

  const CustomIconButton({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
    this.iconSize = 28.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Icon(
        icon,
        size: iconSize,
        color: iconColor,
      ),
    );
  }
}

class CustomIconButtonText extends StatelessWidget {
  final String icon; // Ubah menjadi String untuk menggunakan gambar
  final double iconSize;
  final Color backgroundColor;
  final String text;

  const CustomIconButtonText({
    super.key,
    required this.icon,
    required this.backgroundColor,
    required this.text,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Ganti Icon dengan Image.asset
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Image.asset(
              icon, // Gunakan icon sebagai path gambar
              width: iconSize, // Ukuran gambar
              height: iconSize, // Ukuran gambar
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          AutoSizeText(
            text,
            style: TextStyle(color: grayDark, fontWeight: FontWeight.w700),
            maxFontSize: 12.0,
            minFontSize: 8.0,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
