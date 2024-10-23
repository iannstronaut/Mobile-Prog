import 'package:flutter/material.dart';
import 'package:linkaja_v2/shared/theme.dart';

class ItemsWithTextAdd extends StatelessWidget {
  final String title;
  final String additional;
  const ItemsWithTextAdd(
      {super.key, required this.title, required this.additional});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[200]!, // Ganti dengan warna yang diinginkan
            width: 2.0, // Ketebalan border
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          Row(
            children: [
              Text(
                additional,
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
              SizedBox(
                width: 8.0,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: redTomato,
                size: 16.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ItemsWithoutTextAdd extends StatelessWidget {
  final String title;
  const ItemsWithoutTextAdd({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[200]!, // Ganti dengan warna yang diinginkan
            width: 2.0, // Ketebalan border
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: redTomato,
            size: 16.0,
          ),
        ],
      ),
    );
  }
}
