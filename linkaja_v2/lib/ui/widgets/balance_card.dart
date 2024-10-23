import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:linkaja_v2/shared/theme.dart';

class BalanceCard extends StatelessWidget {
  final String label;
  final String amount;
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final Color backgorundIconColor;
  final Color labelColor;
  final Color amountColor;

  const BalanceCard(
      {super.key,
      required this.label,
      required this.amount,
      required this.icon,
      required this.iconColor,
      required this.backgroundColor,
      required this.backgorundIconColor,
      required this.labelColor,
      required this.amountColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      padding: const EdgeInsets.only(left: 8.0, top: 12.0, bottom: 12.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(color: labelColor, fontSize: 12.0),
          ),
          Row(
            children: [
              Text(
                amount,
                style: TextStyle(
                    color: amountColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 18.0),
              ),
              const SizedBox(
                width: 8.0,
              ),
              Container(
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  color: backgorundIconColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  icon,
                  size: 14.0,
                  color: iconColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BonusCard extends StatelessWidget {
  final String label;
  final String amount;
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final Color backgorundIconColor;
  final Color labelColor;
  final Color amountColor;

  const BonusCard(
      {super.key,
      required this.label,
      required this.amount,
      required this.icon,
      required this.iconColor,
      required this.backgroundColor,
      required this.backgorundIconColor,
      required this.labelColor,
      required this.amountColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      padding: const EdgeInsets.only(left: 8.0, top: 12.0, bottom: 12.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(color: labelColor, fontSize: 12.0),
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  color: Colors.amber[600],
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  Iconsax.dollar_circle,
                  size: 14.0,
                  color: coldSteel,
                ),
              ),
              const SizedBox(
                width: 8.0,
              ),
              Text(
                amount,
                style: TextStyle(
                    color: amountColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 18.0),
              ),
              const SizedBox(
                width: 8.0,
              ),
              Container(
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  color: backgorundIconColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  icon,
                  size: 14.0,
                  color: iconColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
