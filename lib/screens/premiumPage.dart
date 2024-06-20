import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_project/Widgets/dukaanCard.dart';
import 'package:ui_project/Widgets/featureCard.dart';
import 'package:ui_project/Widgets/tileCardSection.dart';
import 'package:ui_project/Widgets/videoSection.dart';
import 'package:ui_project/constant.dart';

class Premiumpage extends StatelessWidget {
  const Premiumpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              height: 200,
              child: AppBar(
                backgroundColor: prymaryColor,
                title: Text(
                  "Dukaan Premium",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Dukaancard(),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 320, left: 10, right: 10),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Feutures",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              fontFamily: "prymaryFont"),
                        ),
                        FeuturesCard(
                          image: "assets/others/globe.png",
                          titile: "Custom domain name",
                          content:
                              "Get your own custom domain and build your brand on the internet.",
                        ),
                        FeuturesCard(
                          image: "assets/others/verified.png",
                          titile: "Verified seller badge",
                          content:
                              "Get green verified badge under your store name and build trust.",
                        ),
                        FeuturesCard(
                          image: "assets/others/laptop.png",
                          titile: "Dukaan for PC",
                          content:
                              "Access all the exclusive premium features on Dukaan for PC.",
                        ),
                        FeuturesCard(
                          image: "assets/others/headphone.png",
                          titile: "priority support",
                          content:
                              "Get your questions resolved with our priority customer support.",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        thickDivider,
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Videosection(),
                    SizedBox(
                      height: 15,
                    ),
                    thickDivider,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Frequanly asked questions",
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "prymaryFont"),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "What type of business can use Dukaan",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "Dukaan caters to a wide variety if sellers. Be it a\nsmall grocery store or big legacy brand-anyone \nwho wants to sell their product/services online-\nDukaan is the perfect platform for you.",
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        Icon(Icons.minimize_rounded)
                      ],
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    thinDivider,
                    ListTile(
                      leading: Text(
                        "Whats is your refund policy?",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            fontFamily: "prymaryFont"),
                      ),
                      trailing: Icon(Icons.add),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
