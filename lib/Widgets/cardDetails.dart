import 'package:flutter/material.dart';
import 'package:ui_project/constant.dart';

class CardDetails extends StatelessWidget {
  String? cardImage;
  String? orderNo;
  String? orderDate;
  String? cardPrice;

  CardDetails({
    required this.cardImage,
    required this.orderNo,
    required this.orderDate,
    required this.cardPrice,
  });

  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: const ColoredBox(
        color: Color.fromARGB(53, 0, 0, 0),
        child: SizedBox(
          height: 2,
          width: double.infinity,
        ),
      ),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Image.asset(cardImage!),
            title: Text(
              "Order #$orderNo",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontFamily: "prymaryFont"),
            ),
            subtitle: Text(
              orderDate!,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "₹$cardPrice",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(255, 18, 130, 242)),
                ),
                Text(
                  "Successful",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          ),
          Text(
            "₹$cardPrice desposited to : 58860200000138",
            style: TextStyle(
              fontSize: 13,
              fontFamily: "italicFont",
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 7,
          ),
          thinDivider
        ],
      ),
    );
  }
}
