import 'package:flutter/material.dart';
import 'package:project/layout/homepage/home_page.dart';
import 'package:project/moduels/forgetpassword.dart';
//import 'package:project/layout/homepage/home_page.dart';
import 'package:project/moduels/loginscreen.dart';
import 'package:project/moduels/mycart.dart';
import 'package:project/moduels/singleproduct.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCart(),
    );
  }
}
