import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dukaancard extends StatelessWidget {
  const Dukaancard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100, right: 15, left: 15, bottom: 10),
      child: Card(
        elevation: 1,
        child: Container(
            height: 200,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    "assets/others/dukkanlogo.png",
                    width: 170,
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    "Get Dukkan Premium for just",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                        fontFamily: "prymaryFont"),
                  ),
                  Text(
                    "₹4,999/year",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                        fontFamily: "prymaryFont"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "All the advanced features for scalling your",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    "busainess",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
