import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Managecard extends StatelessWidget {
  String? manageImage;
  String? manageContent;
  Managecard({required this.manageImage, required this.manageContent});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: 170,
        height: 135,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white70,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                manageImage!,
                width: 40,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(manageContent!,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      fontFamily: "prymaryFont"))
            ],
          ),
        ),
      ),
    );
  }
}
