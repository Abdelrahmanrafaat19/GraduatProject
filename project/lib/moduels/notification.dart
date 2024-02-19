// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notification();
}

class _notification extends State<notification> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back,
            color: Color(0xff123456),
          ),
        ),
      ),
      body: ListView(
        children: [
          const Text(
            'Notification',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xff123456),
                fontSize: 29,
                fontWeight: FontWeight.bold,
                fontFamily: 'Segoe UI'),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Today',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color(0xE8123456),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Segoe UI'),
                  )),
            ],
          ),
          Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Colors.white,
            ),
            margin: const EdgeInsets.only(top: 11.5),
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: ((context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xE7E8E8E8),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'new order',
                          style: TextStyle(
                              color: Color(0xffd78a26),
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Segoe UI'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Buy 2 sofas and get the third as a gift',
                          style: TextStyle(
                              color: Color(0xE8123456),
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Segoe UI'),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),

          )
        ],
      ),
    );
  }
}
