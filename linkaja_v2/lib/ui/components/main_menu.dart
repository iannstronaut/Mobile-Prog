import 'package:flutter/material.dart';
import 'package:linkaja_v2/shared/theme.dart';
import 'package:linkaja_v2/ui/widgets/icons_button.dart';

class MainMenuBar extends StatelessWidget {
  const MainMenuBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16.0, right: 16.0),
      padding: const EdgeInsets.all(8.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomIconButtonText(
              icon: "assets/icons/ic_topup.png",
              backgroundColor: Colors.transparent,
              iconSize: 36.0,
              text: "Top Up"),
          CustomIconButtonText(
            icon: "assets/icons/ic_cashout.png",
            backgroundColor: Colors.transparent,
            text: "CashOut",
            iconSize: 36.0,
          ),
          CustomIconButtonText(
            icon: "assets/icons/ic_transfer.png",
            backgroundColor: Colors.transparent,
            text: "Transfer",
            iconSize: 36.0,
          ),
          CustomIconButtonText(
            icon: "assets/icons/ic_more.png",
            backgroundColor: Colors.transparent,
            text: "See All",
            iconSize: 36.0,
          )
        ],
      ),
    );
  }
}
