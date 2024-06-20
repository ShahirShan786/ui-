import 'package:flutter/material.dart';
import 'package:ui_project/screens/homePage.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "ui desing App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primaryColor: Colors.blue,
      ),
      home: const Homepage(),
    );
  }
}
