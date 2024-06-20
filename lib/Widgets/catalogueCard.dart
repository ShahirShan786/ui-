import 'package:flutter/material.dart';
import 'package:ui_project/constant.dart';

class Cataloguecard extends StatefulWidget {
  String? cardTittle;
  String? cardImg;
  String? cardQuantity;
  String? cardPrice;

  Cataloguecard({
    required this.cardImg,
    required this.cardTittle,
    required this.cardQuantity,
    required this.cardPrice,
  });

  @override
  State<Cataloguecard> createState() => _CataloguecardState();
}

class _CataloguecardState extends State<Cataloguecard> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 400,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.grey[50], borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        widget.cardImg!,
                        fit: BoxFit.cover,
                        width: 120,
                      ),
                    ),
                  ),
                  Container(
                    width: 225,
                    height: 125,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Text(
                                widget.cardTittle!,
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "PrymaryFont"),
                              )),
                              const Icon(Icons.more_vert)
                            ],
                          ),
                        ),
                        Text(
                          widget.cardQuantity!,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          widget.cardPrice!,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            const Expanded(
                              child: Text(
                                "in stock",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.green,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "prymaryFont"),
                              ),
                            ),
                            Transform.scale(
                              scale: 0.7,
                              child: Switch(
                                  activeColor: Colors.blue,
                                  value: isSwitched,
                                  onChanged: (value) {
                                    setState(() {
                                      isSwitched = value;
                                    });
                                  }),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              thinDivider,
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.share),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Share Product",
                    style: TextStyle(fontSize: 19, fontFamily: "prymaryFont"),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
