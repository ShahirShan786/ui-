import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_project/constant.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: prymaryColor,
        centerTitle: true,
        title: const Text(
          "Order #1688068",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "May 31, 05:42 PM",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: "primaryFont"),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 6,
                    ),
                    SizedBox(
                      width: 11,
                    ),
                    Text(
                      "Delivered",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: "primaryFont",
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            thinDivider,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "1 ITEM",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: secondaryColor),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.document_scanner_outlined,
                        color: Color.fromARGB(255, 11, 115, 219),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "RECEIPT",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 11, 115, 219),
                            fontFamily: "PrymaryFont",
                            letterSpacing: 1),
                      ),
                    ],
                  ),
                )
              ],
            ),
            ColoredBox(
              color: Colors.white,
              child: SizedBox(
                width: double.infinity,
                height: 110,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40, left: 5),
                      child: Image.asset(blackShirt!, width: 65, height: 65),
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Explore | Men | Navy Blue",
                          style: TextStyle(fontSize: 18),
                        ),
                        const Text("1 piece"),
                        const Text(
                          "Size : XL",
                          style: TextStyle(fontSize: 15),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(59, 33, 149, 243),
                                  border: Border.all(color: Colors.blue)),
                              child: const Center(child: Text("1")),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "x ₹799",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    ),
                    const Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 25, bottom: 15),
                        child: Text(
                          "₹799",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            thinDivider,
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Item Total",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Delivery",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Grand Total",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        "₹799",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        "FREE",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.green[600]),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        "₹799",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
            ),
            thinDivider,

            // Custumer Detailes Section
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "CUSTOMER DETAILS",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600]),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.share_outlined,
                        color: Colors.blue[800],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "SHARE",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue[800]),
                      ),
                    ],
                  )
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Deepa",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: "prymaryFont"),
                      ),
                      Text(
                        "+91-7829000484",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.whatsapp,
                        size: 35,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      FaIcon(
                        FontAwesomeIcons.whatsapp,
                        size: 35,
                        color: Colors.green,
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Address",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: "prymaryFont"),
                      ),
                      Text(
                        "D 1101 chartered Beverly\nHills ,Subramanyapura P.O",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: "prymaryFont"),
                      )
                    ],
                  ),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "City",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: "prymaryFont"),
                      ),
                      Text(
                        "Banglore",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: [
                      Text(
                        "Pincode",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: "prymaryFont"),
                      ),
                      Text(
                        "560061",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      )
                    ],
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  children: [
                    Text(
                      "Payment",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: "prymaryFont"),
                    ),
                    Text(
                      "Online",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                Container(
                  width: 50,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.green[200],
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                      child: Text(
                    "PAID",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  )),
                )
              ],
            ),
            thinDivider,
            OutlinedButton(
              onPressed: () {
                print("Reciept shared");
              },
              child: Text(
                "Share Receipt",
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: "prymaryFont"),
              ),
              style: ButtonStyle(
                  side: WidgetStateProperty.all(
                      BorderSide(color: prymaryColor, width: 2)),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
                  padding: WidgetStateProperty.all(const EdgeInsets.symmetric(
                    horizontal: 100,
                  ))),
            )
          ],
        ),
      ),
    );
  }
}
