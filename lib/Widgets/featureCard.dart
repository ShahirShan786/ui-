import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FeuturesCard extends StatelessWidget {
  String? image;
  String? titile;
  String? content;
  FeuturesCard(
      {required this.image, required this.titile, required this.content});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(image!),
      title: Text(
        titile!,
        style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w900,
            fontFamily: "prymaryFont"),
      ),
      subtitle: Text(
        content!,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
      ),
    );
  }
}
