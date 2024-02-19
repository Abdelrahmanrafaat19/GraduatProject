import 'package:flutter/material.dart';

class my_orders extends StatefulWidget {
  const my_orders({super.key});

  @override
  State<my_orders> createState() => _my_orders();
}

class _my_orders extends State<my_orders> {
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
        child: ListView(
          children: [
            const Text(
              'My orders',
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
              margin: const EdgeInsets.only(top: 11.5),
              padding: const EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: 8,
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
                            margin: const EdgeInsets.only(left: 9, top: 9),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'White Chair',
                                    style: TextStyle(
                                        color: Color(0xff123456),
                                        fontSize: 19,
                                        fontFamily: 'Segoe UI'),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text(
                                    'Price:20\$',
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(child: SizedBox()),
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 9, top: 9, bottom: 9),
                                  child: Text(
                                    'More details >',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xff123456),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
