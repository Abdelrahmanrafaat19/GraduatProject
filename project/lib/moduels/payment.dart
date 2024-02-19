import 'package:flutter/material.dart';

class payment extends StatefulWidget {
  const payment({super.key});
  @override
  State<payment> createState() => _payment();
}

class _payment extends State<payment> {
  bool valueSwitch= true;
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
          'Payment',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color(0xff123456),
              fontSize: 39,
              fontWeight: FontWeight.bold,
              fontFamily: 'Segoe UI'),
        ),
        SizedBox(
          height: height * 0.035,
        ),
        Container(
            margin: EdgeInsets.only(
                left: 20.0, top: 0.0, right: 20.0, bottom: 10.0),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xffeeeeee),
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.only(
                left: 20.0, top: 5.0, right: 20.0, bottom: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'TOTAL',
                  style: TextStyle(
                      color: Color(0xff1e445a),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Segoe UI'),
                ),
                Text(
                  "40\$",
                  style: TextStyle(
                      color: Color(0xffd78a26),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Segoe UI'),
                )
              ],
            )),
        Container(
            margin:
                EdgeInsets.only(left: 80.0, top: 0.0, right: 80.0, bottom: 5.0),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.only(
                left: 5.0, top: 5.0, right: 0.0, bottom: 0.0),
            child: Row(
              children: const [
                Image(image: AssetImage('assets/visa-logo-.png')),
                SizedBox(
                  width: 10.0,
                ),
                Image(
                  image: AssetImage('assets/master.png'),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Image(
                  image: AssetImage('assets/caa.png'),
                ),
              ],
            )),
        Container(
          margin:
              EdgeInsets.only(left: 25.0, top: 0.0, right: 25.0, bottom: 5.0),
          padding: const EdgeInsets.only(
              left: 0.0, top: 5.0, right: 0.0, bottom: 0.0),
          child: TextFormField(
            decoration: const InputDecoration(
              label: Text(
                'Card holder name',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Segoe UI'),
              ),
              border: UnderlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 25.0, top: 0.0, right: 25.0, bottom: 5.0),
          padding: const EdgeInsets.only(
              left: 0.0, top: 5.0, right: 0.0, bottom: 0.0),
          child: TextFormField(
            decoration: const InputDecoration(
              label: Text(
                'Card number',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Segoe UI'),
              ),
              border: UnderlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 25.0, top: 0.0, right: 25.0, bottom: 5.0),
          padding: const EdgeInsets.only(
              left: 0.0, top: 5.0, right: 0.0, bottom: 0.0),
          child: TextFormField(
            decoration: const InputDecoration(
              label: Text(
                'Valid date',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Segoe UI'),
              ),
              border: UnderlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 25.0, top: 0.0, right: 25.0, bottom: 5.0),
          padding: const EdgeInsets.only(
              left: 0.0, top: 5.0, right: 0.0, bottom: 0.0),
          child: TextFormField(
            decoration: const InputDecoration(
              label: Text(
                'Adress',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Segoe UI'),
              ),
              border: UnderlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 25.0, top: 0.0, right: 25.0, bottom: 10.0),
          padding: const EdgeInsets.only(
              left: 0.0, top: 5.0, right: 0.0, bottom: 0.0),
          child: TextFormField(
            decoration: const InputDecoration(
              label: Text(
                'Phone number',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Segoe UI'),
              ),
              border: UnderlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
          ),
        ),
        Container(
            margin:
                EdgeInsets.only(left: 25.0, top: 0.0, right: 25.0, bottom: 0.0),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.only(
                left: 5.0, top: 5.0, right: 0.0, bottom: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                const Text(
                  'Save card data for future payment',
                  style: TextStyle(
                      color: Color(0xff1e445a),
                      fontSize: 15,
                      fontFamily: 'Segoe UI'),
                ),
                Switch(
                  activeColor: Color(0xff24d710),
                  value: valueSwitch,
                  onChanged: (value) {
                    setState(() {
                      valueSwitch = value;
                    });
                  },
                )
              ],
            )),
        InkWell(
            onTap: () =>
                print('Check the payment card is Valid go to confirm order'),
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
                  child: Text('Proceed to confirm',
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
