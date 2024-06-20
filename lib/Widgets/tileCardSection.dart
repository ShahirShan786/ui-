import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_project/constant.dart';

class Tilecardsection extends StatelessWidget {
  const Tilecardsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Text(
            "Will there be an automatic charge after the\npaid trail?",
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                fontFamily: "prymaryFont"),
          ),
          trailing: Icon(Icons.add),
        ),
        thinDivider,
        ListTile(
          leading: Text(
            "Will there be an automatic charge after the\npaid trail?",
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                fontFamily: "prymaryFont"),
          ),
          trailing: Icon(Icons.add),
        ),
        thinDivider,
      ],
    );
  }
}
