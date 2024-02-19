import 'package:dob_input_field/dob_input_field.dart';
import 'package:flutter/material.dart';
import 'package:project/moduels/interest_screen.dart';
import 'package:project/moduels/loginscreen.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  List<String> gender = ['Male', 'Famele'];
  var value;

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
      body: Center(
        child: Container(
          padding: EdgeInsets.only(left: width * 0.05, right: height * 0.05),
          child: ListView(
            padding: EdgeInsets.only(top: width * 0.2),
            /*mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,*/
            children: [
              const Text(
                'Register',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff123456),
                    fontSize: 39,
                    fontFamily: 'Segoe UI',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.06,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('User name'),
                  border: UnderlineInputBorder(),
                ),
                keyboardType: TextInputType.text,
              ),
              //e-mailAddress TextField
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('E-mail'),
                  border: UnderlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),

              /*SizedBox(
                height: 40,
              ),*/
              /* DOBInputField(
                firstDate: DateTime(1900),
                lastDate: DateTime.now(),
                showLabel: true,
                showCursor: true,
                autovalidateMode: AutovalidateMode.always,
                fieldLabelText: "With label",
              ),*/
              //password TextField
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  label: Text('Password'),
                  border: UnderlineInputBorder(),
                ),
              ),
              SizedBox(
                height: height * 0.10,
              ),
              //login Button
              InkWell(
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => CategoriesInterests())),
                  child: Container(
                      margin: EdgeInsets.only(
                          right: width * 0.15, left: width * 0.15),
                      padding: EdgeInsets.only(
                          left: width * 0.05,
                          right: width * 0.05,
                          top: width * 0.02,
                          bottom: width * 0.02),
                      decoration: BoxDecoration(
                          color: Color(0xff123456),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: const Center(
                        child: Text('Next',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontFamily: 'Segoe UI',
                                fontWeight: FontWeight.bold)),
                      ))),
              SizedBox(
                height: height * 0.03,
              ),
              //the text bottom loginButton
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don,t have an account?',
                      style: TextStyle(
                          color: Color(0xff123456),
                          fontSize: 21,
                          fontFamily: 'Segoe UI',
                          fontWeight: FontWeight.bold)),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const LoginScreen()));
                      },
                      child: const Text('Login',
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 21,
                              fontFamily: 'Segoe UI',
                              fontWeight: FontWeight.normal)))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
