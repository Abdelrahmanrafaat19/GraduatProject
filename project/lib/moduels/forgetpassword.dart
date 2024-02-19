import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
        const Text(
          'Forget Password',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color(0xff123456),
              fontSize: 39,
              fontWeight: FontWeight.bold,
              fontFamily: 'Segoe UI'),
        ),
        SizedBox(
          height: height * 0.06,
        ),
        Container(
          padding: EdgeInsets.only(left: width * 0.05, right: height * 0.05),
          child: TextFormField(
            decoration: const InputDecoration(
              label: Text('E-mail'),
              border: UnderlineInputBorder(),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        ),
        SizedBox(
          height: height * 0.20,
        ),
        InkWell(
            onTap: () => print(
                'Check the Email Address is Valide to go to confirm password'),
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
                  child: Text('Reset password',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'Segoe UI',
                          fontWeight: FontWeight.bold)),
                ))),
        SizedBox(
          height: width * 0.1,
        ),
        const Text(
          '''you will receive a message to your e-mail  containing the confirmation number''',
          style: TextStyle(
              color: Color(0xff123456), fontSize: 18, fontFamily: 'Segoe UI'),
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
