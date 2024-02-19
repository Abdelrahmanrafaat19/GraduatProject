import 'package:flutter/material.dart';

import 'package:project/moduels/All_Screen.dart';
import 'package:project/moduels/bed_screen.dart';
import 'package:project/moduels/chair_screen.dart';
import 'package:project/moduels/sofa_screen.dart';
import 'package:project/moduels/table_Screen.dart';

class OurProduct extends StatefulWidget {
  const OurProduct({super.key});

  @override
  State<OurProduct> createState() => _OurProductState();
}

class _OurProductState extends State<OurProduct> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            labelColor: Color(0xff123456),
            indicatorColor: Color(0xff123456),
            labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            tabs: [
              Tab(
                text: 'All',
              ),
              Tab(
                text: 'Sofa',
              ),
              Tab(
                text: 'Chair',
              ),
              Tab(
                text: 'Table',
              ),
              Tab(
                text: 'Bed',
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title: const Text(
            textAlign: TextAlign.center,
            'Our product',
            style: TextStyle(
                color: Color(0xff123456),
                fontSize: 29,
                fontWeight: FontWeight.bold,
                fontFamily: 'Segoe UI'),
          ),
          leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back,
              color: Color(0xff123456),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            AllProductsScreen(),
            SofaScreen(),
            ChairScreen(),
            TableScreen(),
            BedScreen()
          ],
        ),
      ),
    );
  }
}
