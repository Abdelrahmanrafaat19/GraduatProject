import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SingleProductScreen extends StatefulWidget {
  const SingleProductScreen({super.key});

  @override
  State<SingleProductScreen> createState() => _SingleProductScreenState();
}

class _SingleProductScreenState extends State<SingleProductScreen> {
  @override
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
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: const Icon(
              Icons.favorite_border,
              color: Color(0xff123456),
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 40, right: 20),
            alignment: Alignment.bottomRight,
            width: double.infinity,
            height: height * 0.7,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://images.free3d.com/imgd/l39/5e25509426be8bba448b4567/9858-modern-chair-11.jpg'))),
            child: const Icon(
              Icons.animation_outlined,
              color: Colors.blue,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: height * 0.67),
            height: height * 0.40,
            width: width,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text('The product Name ',
                          style: TextStyle(
                              color: Color(0xff123456),
                              fontFamily: 'Segoe UI',
                              fontSize: 27,
                              fontWeight: FontWeight.bold)),
                      Text(
                        '20\$ ',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.brown,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.all(5),
                  height: 100,
                  child: const Text(
                    'Lorem ipsum dolor sit amet. Quo eaque esse et tenetur quidem et repudiandae dignissimos At voluptatum omnis ut dolorem sint. Aut voluptatem quaerat ex unde molestias ab sunt enim provident consequatur.',
                    textAlign: TextAlign.justify,
                  ),
                ),
                InkWell(
                    onTap: () => print('Add To Cart'),
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
                          child: Text('Add to cart',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontFamily: 'Segoe UI',
                                  fontWeight: FontWeight.bold)),
                        ))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
/*
Container(
        width: double.infinity,
        height: height * 0.7,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://images.free3d.com/imgd/l39/5e25509426be8bba448b4567/9858-modern-chair-11.jpg'))),
      )*/