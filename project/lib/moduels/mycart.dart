import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: const [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.delete,
              color: Color(0xff123456),
            ),
          )
        ],
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back,
            color: Color(0xff123456),
          ),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            const Text(
              'My Cart',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xff123456),
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Segoe UI'),
            ),
            Container(
              height: height,
              width: width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Color(0xE7E8E8E8),
              ),
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: ((context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    height: 100,
                    decoration: BoxDecoration(
                        color: Color(0xE7FFFFFF),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        'https://cb2.scene7.com/is/image/CB2/GPGwynethBclChrBlcWhtSHF18_1x1/\$web_pdp_main_carousel_sm\$/190905023639/gwyneth-boucle-chair.jpg'))),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.white,
                            margin: const EdgeInsets.only(
                                left: 9, right: 9, top: 9),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Expanded(
                                  child: Text(
                                    'White Chair',
                                    style: TextStyle(
                                        color: Color(0xff123456),
                                        fontSize: 19,
                                        fontFamily: 'Segoe UI'),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Price:20\$',
                                    style: TextStyle(
                                        color: Colors.brown,
                                        fontSize: 19,
                                        fontFamily: 'Segoe UI'),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Total:20\$',
                                    style: TextStyle(
                                        color: Colors.brown,
                                        fontSize: 19,
                                        fontFamily: 'Segoe UI'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 2,
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 50, top: 9, bottom: 9),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: FloatingActionButton(
                                      backgroundColor: Colors.white,
                                      elevation: 0.0,
                                      mini: true,
                                      onPressed: () {},
                                      child: const Icon(Icons.add,
                                          color: Color(0xff123456)),
                                    ),
                                  ),
                                  const Expanded(
                                    child: Text(
                                      '1',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xff123456),
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Expanded(
                                    child: FloatingActionButton(
                                      backgroundColor: Colors.white,
                                      elevation: 0.0,
                                      mini: true,
                                      onPressed: () {},
                                      child: const Padding(
                                        padding:
                                             EdgeInsets.only(bottom: 1),
                                        child:  Icon(
                                          Icons.minimize,
                                          color:  Color(0xff123456),
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                  );
                }),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              width: width,
              height: height * 0.085,
              child: Row(children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(9),
                    child: Column(
                      children: const [
                        Text(
                          'SubTotal:20\$',
                          style: TextStyle(
                              color: Color(0xff123456),
                              fontSize: 19,
                              fontFamily: 'Segoe UI'),
                        ),
                        Text(
                          'Delivery :20\$',
                          style: TextStyle(
                              color: Color(0xff123456),
                              fontSize: 19,
                              fontFamily: 'Segoe UI'),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(9),
                    child: const Text(
                      'Total:20\$',
                      style: TextStyle(
                          color: Color(0xff123456),
                          fontSize: 25,
                          fontFamily: 'Segoe UI',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                      onTap: () => print('Requset to Check Email and Password'),
                      child: Container(
                          margin: const EdgeInsets.only(
                              top: 10, bottom: 10, right: 5),
                          padding: EdgeInsets.only(
                              left: width * 0.05,
                              right: width * 0.05,
                              top: width * 0.02,
                              bottom: width * 0.02),
                          decoration: BoxDecoration(
                              color: const Color(0xff123456),
                              borderRadius: BorderRadius.circular(30.0)),
                          child: const Center(
                            child: Text('Check out',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Segoe UI',
                                    fontWeight: FontWeight.bold)),
                          ))),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
