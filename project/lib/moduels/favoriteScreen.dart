import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  bool valueSwitch = false;
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const InkWell(
          child: Icon(
            Icons.arrow_back,
            color: Color(0xff123456),
          ),
        ),
      ),
      body: ListView(
        children: [
          const Text(
            textAlign: TextAlign.center,
            'Forget Password',
            style: TextStyle(
                color: Color(0xff123456),
                fontSize: 29,
                fontWeight: FontWeight.bold,
                fontFamily: 'Segoe UI'),
          ),
          Switch(
            value: valueSwitch,
            onChanged: (value) {
              setState(() {
                valueSwitch = value;
              });
            },
          )
        ],
      ),
    );
  }
}
