import 'package:flutter/material.dart';

const whatsapIcon = "assets/Icons/whatsapp.svg";

// color

// ignore: prefer_const_constructors
Color prymaryColor = Colors.blueAccent;
Color? secondaryColor = Colors.grey[500];

// Widget Refactor
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

Widget thickDivider = Padding(
  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
  child: const ColoredBox(
    color: Color.fromARGB(53, 0, 0, 0),
    child: SizedBox(
      height: 3,
      width: double.infinity,
    ),
  ),
);

// Products

String? blackTshirt = "assets/products/black t shirt.jpg";
String? blackShirt = "assets/products/blackshirt.jpg";
String? blueshirt = "assets/products/bluetshirt.jpg";
String? cargo = "assets/products/cargo.png";
String? combo = "assets/products/combo.webp";
String? combo2 = "assets/products/combo2.jpg";
String? combo4 = "assets/products/combo4.jpg";
String? cup = "assets/products/cup.png";
String? cup1 = "assets/products/cup1.png";
String? shirt = "assets/products/shirt.png";
String? tshirt = "assets/products/tshirt.webp";
String? whitemug = "assets/products/whitemug.jpg";
String? tShirt2 = "assets/products/2ndtshirt.jpg";
String? blackmug = "assets/products/blackmug.jpg";
