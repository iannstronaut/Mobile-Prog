import 'package:flutter/material.dart';
import 'package:linkaja_v2/shared/theme.dart';
import 'package:linkaja_v2/ui/widgets/account_items.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0, top: 50, bottom: 24.0),
              color: whiteColor,
              width: double.infinity,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Al Byan Agung Shafiqri",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "+628992XXXXX",
                        style: TextStyle(fontSize: 14.0),
                      )
                    ],
                  ),
                  CircleAvatar(
                    radius: 40.0,
                    backgroundImage:
                        AssetImage("assets/images/img_profile.jpg"),
                  )
                ],
              ),
            ),
            Container(
              color: whiteColor,
              margin: EdgeInsets.only(top: 16.0),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  ItemsWithTextAdd(
                      title: "Account Type", additional: "FULL SERVICE"),
                  ItemsWithoutTextAdd(title: "Account Settings"),
                  ItemsWithTextAdd(
                      title: "Link Aja Syariah", additional: "Not Active"),
                  ItemsWithoutTextAdd(title: "Payment Method")
                ],
              ),
            ),
            Container(
              color: whiteColor,
              margin: EdgeInsets.only(top: 16.0),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  ItemsWithTextAdd(
                      title: "Email",
                      additional: "albyanagungshafiqri@gmail.com"),
                  ItemsWithTextAdd(
                      title: "Security Question", additional: "Set"),
                  ItemsWithoutTextAdd(title: "PIN"),
                  ItemsWithTextAdd(title: "Language", additional: "English")
                ],
              ),
            ),
            Container(
              color: whiteColor,
              margin: EdgeInsets.only(top: 16.0),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  ItemsWithoutTextAdd(title: "Terms of Service"),
                  ItemsWithoutTextAdd(title: "Privacy Policy"),
                  ItemsWithoutTextAdd(title: "Help Center"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
