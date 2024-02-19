import 'package:flutter/material.dart';
import 'package:project/moduels/forgetpassword.dart';
import 'package:project/moduels/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
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
                'Login',
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
              //e-mailAddress TextField
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('E-mail'),
                  border: UnderlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 40,
              ),
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
                  onTap: () => print('Requset to Check Email and Password'),
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
                        child: Text('Login',
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
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => SignUpScreen()));
                      },
                      child: const Text('SignUP',
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 21,
                              fontFamily: 'Segoe UI',
                              fontWeight: FontWeight.normal)))
                ],
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const ForgetPassword()));
                  },
                  child: const Text('ForgetPassword',
                      style: TextStyle(
                          color: Colors.brown,
                          fontSize: 21,
                          fontFamily: 'Segoe UI',
                          fontWeight: FontWeight.normal)))
            ],
          ),
        ),
      ),
    );
  }
}
