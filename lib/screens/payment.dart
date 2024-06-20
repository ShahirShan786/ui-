import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_project/Widgets/cardDetails.dart';
import 'package:ui_project/constant.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget divider = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: const ColoredBox(
        color: Color.fromARGB(53, 0, 0, 0),
        child: SizedBox(
          height: 2,
          width: double.infinity,
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: prymaryColor,
        centerTitle: true,
        title: const Text(
          "Payments",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                print("infon icon pressed");
              },
              icon: const Icon(
                Icons.info_outline,
                color: Colors.white,
                size: 28,
              ))
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              // Card section
              Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 220,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Color.fromARGB(115, 158, 158, 158), width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Transaction Limit",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              fontFamily: "primaryFont"),
                        ),
                        const Text(
                          "A free limit up to which you will recieve the online payments direcly in your bank",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Stack(
                          children: <Widget>[
                            Container(
                              width: double.infinity,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                            Container(
                              width: 110,
                              height: 8,
                              decoration: BoxDecoration(
                                color: prymaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            )
                          ],
                        ),
                        Text(
                          "36,668 left out of ₹50,000",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[500]),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.blueAccent),
                              foregroundColor:
                                  WidgetStateProperty.all(Colors.white),
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)))),
                          onPressed: () {
                            print("Limit Incresed");
                          },
                          child: const Text(
                            "Increase limit",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              // Card section
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 13, horizontal: 8),
                    child: Text(
                      "Default Method",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: "PrymaryFont"),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Online Payment",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            fontFamily: "prymaryFont",
                            color: Colors.grey[700]),
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 18,
                      )
                    ],
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 13, horizontal: 8),
                    child: Text(
                      "Payment Profile",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: "PrymaryFont"),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Back Account",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            fontFamily: "prymaryFont",
                            color: Colors.grey[700]),
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 18,
                      )
                    ],
                  ),
                ],
              ),

              divider,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 13, horizontal: 8),
                    child: Text(
                      "Payments Overview",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: "PrymaryFont"),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Life Time",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            fontFamily: "prymaryFont",
                            color: Colors.grey[700]),
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down,
                        size: 28,
                      )
                    ],
                  ),
                ],
              ),
              // Container Row

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 175,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.deepOrange[500],
                        borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "AMOUNT ON HOLD",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "₹0",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 175,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.green[700],
                        borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "AMOUNT RECIEVED",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "₹13,332",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Transaction",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: "primaryFont"),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "On hold",
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.grey[300])),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "Payouts(15)",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(prymaryColor),
                              foregroundColor:
                                  WidgetStateProperty.all(Colors.white)),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Refunds",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.grey[300])),
                        )
                      ],
                    )
                  ],
                ),
              ),
              CardDetails(
                cardImage: blackShirt,
                orderNo: "16800068",
                orderDate: "Jul 12, 02:06 PM",
                cardPrice: "799",
              ),
              CardDetails(
                cardImage: whitemug,
                orderNo: "1457741",
                orderDate: "Apr 26, 04:12 PM",
                cardPrice: "397.4",
              ),
              CardDetails(
                cardImage: combo4,
                orderNo: "13068896",
                orderDate: "Apr 02, 03:26 PM",
                cardPrice: "1123.5",
              ),
              CardDetails(
                cardImage: combo,
                orderNo: "15365549",
                orderDate: "Mar 22, 09:15 AM",
                cardPrice: "512.86",
              ),
              CardDetails(
                cardImage: tShirt2,
                orderNo: "14882632",
                orderDate: "Mar 11, 04:55 PM",
                cardPrice: "956.56",
              ),
              CardDetails(
                cardImage: whitemug,
                orderNo: "14055296",
                orderDate: "Jan 28, 11:00 AM",
                cardPrice: "599.00",
              ),
              CardDetails(
                cardImage: tshirt,
                orderNo: "13062544",
                orderDate: "Apr 02, 03:26 PM",
                cardPrice: "1299.32",
              ),
              CardDetails(
                cardImage: cargo,
                orderNo: "15365549",
                orderDate: "Mar 22, 09:15 AM",
                cardPrice: "512.86",
              ),
              CardDetails(
                cardImage: combo4,
                orderNo: "14844213",
                orderDate: "Mar 11, 04:55 PM",
                cardPrice: "956.56",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
