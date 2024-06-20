import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_project/constant.dart';
import 'package:ui_project/screens/addInfoPage.dart';
import 'package:ui_project/screens/cataloguePage.dart';
import 'package:ui_project/screens/managePage.dart';
import 'package:ui_project/screens/orderPage.dart';
import 'package:ui_project/screens/payment.dart';
import 'package:ui_project/screens/premiumPage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: prymaryColor,
        centerTitle: true,
        title: const Text(
          "Home page",
          style: TextStyle(
            fontSize: 22,
            // fontFamily: "prymaryFont",
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: const Center(
        child: Column(
          children: [
            SizedBox(
              height: 220,
            ),
            Text(
              "Dukkan App",
              style: TextStyle(
                  fontSize: 38,
                  fontFamily: "secondaryFont",
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
              child: SizedBox(), //Text("Drawer header"),
            ),
            ListTile(
              leading: const Text(
                "Additional information",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
              ),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AddInfoPage(),
                ));
              },
            ),
            ListTile(
              leading: const Text(
                "Manage Store",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
              ),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ManagePage(),
                ));
              },
            ),
            ListTile(
              leading: const Text(
                "Payments",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
              ),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const PaymentScreen(),
                ));
              },
            ),
            ListTile(
              leading: const Text(
                "Dukkan Premium",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
              ),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Premiumpage(),
                ));
              },
            ),
            ListTile(
              leading: const Text(
                "Order Page",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
              ),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const OrderPage(),
                ));
              },
            ),
            ListTile(
              leading: Text(
                "Catalouge",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
              ),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Cataloguepage(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
