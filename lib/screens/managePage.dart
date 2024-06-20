import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_project/Widgets/manageCard.dart';
import 'package:ui_project/constant.dart';

class ManagePage extends StatelessWidget {
  const ManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: prymaryColor,
        centerTitle: true,
        title: const Text(
          "Manage Store",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Managecard(
                  manageImage: "assets/others/marketing.jpg",
                  manageContent: "Marketing\nDesigns",
                ),
                Managecard(
                  manageImage: "assets/others/onlinePayment.jpg",
                  manageContent: "Marketing\nDesigns",
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Managecard(
                  manageImage: "assets/others/discount.jpg",
                  manageContent: "Discount\nCoupens",
                ),
                Managecard(
                  manageImage: "assets/others/myCustomers.jpg",
                  manageContent: "My\nCustomers",
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Managecard(
                  manageImage: "assets/others/qr.jpg",
                  manageContent: "Store QR\nCode",
                ),
                Managecard(
                  manageImage: "assets/others/extraCharges.jpg",
                  manageContent: "Extra\nCharges",
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Managecard(
                  manageImage: "assets/others/orderForm.jpg",
                  manageContent: "Order\nForm",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
