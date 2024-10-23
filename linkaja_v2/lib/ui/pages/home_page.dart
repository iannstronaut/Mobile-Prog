import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:linkaja_v2/shared/theme.dart';
import 'package:linkaja_v2/ui/components/balance_menu.dart';
import 'package:linkaja_v2/ui/components/carosel_main.dart';
import 'package:linkaja_v2/ui/components/main_menu.dart';
import 'package:linkaja_v2/ui/widgets/icons_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Image.asset("assets/images/bg_city.png"),
                Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/icons/ic_linkaja.png"),
                          Row(
                            children: [
                              CustomIconButton(
                                  icon: Iconsax.notification,
                                  iconColor: grayDark,
                                  backgroundColor: coldSteel),
                              const SizedBox(
                                width: 8,
                              ),
                              CustomIconButton(
                                  icon: Iconsax.headphone,
                                  iconColor: grayDark,
                                  backgroundColor: coldSteel),
                            ],
                          )
                        ],
                      ),
                    ),
                    const BalanceMenu(),
                  ],
                )
              ],
            ),
            const MainMenuBar(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 36.0, vertical: 16.0),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIconButtonText(
                        icon: "assets/icons/ic_pulsadata.png",
                        backgroundColor: Colors.white,
                        text: "Pulsa Data",
                        iconSize: 50.0,
                      ),
                      CustomIconButtonText(
                        icon: "assets/icons/ic_listrik.png",
                        backgroundColor: Colors.white,
                        text: "Listrik",
                        iconSize: 50.0,
                      ),
                      CustomIconButtonText(
                        icon: "assets/icons/ic_tvcable.png",
                        backgroundColor: Colors.white,
                        text: "CableTv & Internet",
                        iconSize: 50.0,
                      ),
                      CustomIconButtonText(
                        icon: "assets/icons/ic_e-money.png",
                        backgroundColor: Colors.white,
                        text: "E-Money",
                        iconSize: 50.0,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIconButtonText(
                        icon: "assets/icons/ic_gereja.png",
                        backgroundColor: Colors.white,
                        text: "Gereja",
                        iconSize: 50.0,
                      ),
                      CustomIconButtonText(
                        icon: "assets/icons/ic_infaq.png",
                        backgroundColor: Colors.white,
                        text: "Infaq",
                        iconSize: 50.0,
                      ),
                      CustomIconButtonText(
                        icon: "assets/icons/ic_donation.png",
                        backgroundColor: Colors.white,
                        text: "Other Donation",
                        iconSize: 50.0,
                      ),
                      CustomIconButtonText(
                        icon: "assets/icons/ic_all.png",
                        backgroundColor: Colors.white,
                        text: "More",
                        iconSize: 50.0,
                      ),
                    ],
                  )
                ],
              ),
            ),
            InfiniteCarousel(),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Best Deals",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 18.0),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(fontSize: 16.0, color: redTomato),
                      )
                    ],
                  ),
                ),
                InfiniteCarouselWithText()
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Latest Update",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                InfiniteCarouselWithText()
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
