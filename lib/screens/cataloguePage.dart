import 'package:flutter/material.dart';
import 'package:ui_project/Widgets/catalogueCard.dart';
import 'package:ui_project/constant.dart';

class Cataloguepage extends StatefulWidget {
  const Cataloguepage({super.key});

  @override
  State<Cataloguepage> createState() => _CataloguepageState();
}

class _CataloguepageState extends State<Cataloguepage> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: prymaryColor,
          foregroundColor: Colors.white,
          title: Text("Catalogue"),
          centerTitle: true,
          bottom: const TabBar(
              indicatorPadding: EdgeInsets.symmetric(horizontal: -60),
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  child: Text(
                    "Products",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                Text(
                  "Categories",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ]),
          actions: [
            IconButton(
                onPressed: () {
                  print("Serchbutton Clicked");
                },
                icon: Icon(Icons.search))
          ],
        ),
        body: TabBarView(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Cataloguecard(
                      cardImg: blackShirt,
                      cardTittle: "Couch potato | Women...",
                      cardQuantity: "1 Piece",
                      cardPrice: "₹799"),
                  Cataloguecard(
                    cardImg: tShirt2,
                    cardTittle: " Couch Potato | Men...",
                    cardQuantity: "1 Piece",
                    cardPrice: "₹799",
                  ),
                  Cataloguecard(
                    cardImg: cup1,
                    cardTittle: " Mug | Explore | Men...",
                    cardQuantity: "1 Piece",
                    cardPrice: "₹399",
                  ),
                  Cataloguecard(
                    cardImg: combo,
                    cardTittle: " Combo Blahst | Pack...",
                    cardQuantity: "1 Piece",
                    cardPrice: "₹699",
                  ),
                  Cataloguecard(
                    cardImg: combo2,
                    cardTittle: " Combo Pro | Pack...",
                    cardQuantity: "1 Piece",
                    cardPrice: "₹699",
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Cataloguecard(
                  cardImg: blackShirt,
                  cardTittle: "Mug Classic | Stan..",
                  cardQuantity: "1 piece",
                  cardPrice: "₹399",
                ),
                Cataloguecard(
                  cardImg: cargo,
                  cardTittle: "Fasio Cargo | Men..",
                  cardQuantity: "1 piece",
                  cardPrice: "₹899",
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
