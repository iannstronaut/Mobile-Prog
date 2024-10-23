import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:linkaja_v2/shared/theme.dart';
import 'package:linkaja_v2/ui/widgets/balance_card.dart';

class BalanceMenu extends StatelessWidget {
  const BalanceMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.only(left: 12.0, top: 20.0, bottom: 20.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: redTomato,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, AL BYAN AGUNG SHAFIQRI",
              style: TextStyle(
                  color: whiteColor, fontWeight: FontWeight.w700, fontSize: 16),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              children: [
                BalanceCard(
                    label: "Your Balance",
                    amount: "Rp 6.000",
                    icon: Iconsax.arrow_right_1,
                    iconColor: coldSteel,
                    backgroundColor: coldSteel,
                    backgorundIconColor: redTomato,
                    labelColor: grayLight,
                    amountColor: grayDark),
                const SizedBox(
                  width: 8.0,
                ),
                BonusCard(
                    label: "Bonus Balance",
                    amount: "0",
                    icon: Iconsax.arrow_right_1,
                    iconColor: coldSteel,
                    backgroundColor: coldSteel,
                    backgorundIconColor: redTomato,
                    labelColor: grayLight,
                    amountColor: grayDark)
              ],
            )
          ],
        ),
      ),
    );
  }
}
