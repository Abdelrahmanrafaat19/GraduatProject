import 'package:flutter/material.dart';

class valid_pass extends StatefulWidget {
  const valid_pass({super.key});

  @override
  State<valid_pass> createState() => _valid_pass();
}

class _valid_pass extends State<valid_pass> {
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
      body: ListView(children: [
        SizedBox(
          height: height * 0.08,
        ),
        const Text(
          'Reset password',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color(0xff123456),
              fontSize: 39,
              fontWeight: FontWeight.bold,
              fontFamily: 'Segoe UI'),
        ),
        SizedBox(
          height: height * 0.14,
        ),
        Container(
          padding: EdgeInsets.only(left: width * 0.05, right: height * 0.05),
          child: TextFormField(
            decoration: const InputDecoration(
              label: Text('Confirmation number',
                  style: TextStyle(
                  color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Segoe UI'),),
              border: UnderlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
          ),
        ),
        SizedBox(
          height: height * 0.20,
        ),
        InkWell(
            onTap: () => print('send confirmation number'),
            child: Container(
                margin:
                    EdgeInsets.only(right: width * 0.15, left: width * 0.15),
                padding: EdgeInsets.only(
                    left: width * 0.05,
                    right: width * 0.05,
                    top: width * 0.03,
                    bottom: width * 0.03),
                decoration: BoxDecoration(
                    color: const Color(0xff123456),
                    borderRadius: BorderRadius.circular(30.0)),
                child: const Center(
                  child: Text('New password',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'Segoe UI',
                          fontWeight: FontWeight.bold)),
                ))),
      ]),
    );
  }
}
