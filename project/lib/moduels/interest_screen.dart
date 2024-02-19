import 'package:flutter/material.dart';
import 'package:project/moduels/profile_photo_pick.dart';

class CategoriesInterests extends StatefulWidget {
  const CategoriesInterests({super.key});

  @override
  State<CategoriesInterests> createState() => _CategoriesInterestsState();
}

class _CategoriesInterestsState extends State<CategoriesInterests> {
  GlobalKey<ScaffoldState> sd = GlobalKey<ScaffoldState>();
  ColorsContainer obj1 = ColorsContainer();
  ColorsContainer obj2 = ColorsContainer();
  ColorsContainer obj3 = ColorsContainer();
  ColorsContainer obj4 = ColorsContainer();
  ColorsContainer obj5 = ColorsContainer();
  ColorsContainer obj6 = ColorsContainer();
  ColorsContainer obj7 = ColorsContainer();
  ColorsContainer obj8 = ColorsContainer();
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
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Text(
                  'What are the things you care about most?',
                  style: TextStyle(
                      color: Color(0xff123456),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Segoe UI'),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  children: [
                    obj1.defoultContainer(
                      text: 'Office furniture',
                      width: width * 0.5,
                      onpressed: () {
                        setState(() {
                          if (obj1.backGroundColor == Colors.white) {
                            obj1.backGroundColor = const Color(0xff123456);
                            obj1.textColor = Colors.white;
                            obj1.borderColor = const Color(0xff123456);
                          } else {
                            obj1.backGroundColor = Colors.white;
                            obj1.textColor = const Color(0xff123456);
                            obj1.borderColor = Colors.blue;
                          }
                        });
                      },
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    obj2.defoultContainer(
                      text: 'Antiques',
                      width: width * 0.3,
                      onpressed: () {
                        setState(() {
                          if (obj2.backGroundColor == Colors.white) {
                            obj2.backGroundColor = const Color(0xff123456);
                            obj2.textColor = Colors.white;
                            obj2.borderColor = const Color(0xff123456);
                          } else {
                            obj2.backGroundColor = Colors.white;
                            obj2.textColor = const Color(0xff123456);
                            obj2.borderColor = Colors.blue;
                          }
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  children: [
                    obj3.defoultContainer(
                      text: 'Antiques',
                      width: width * 0.3,
                      onpressed: () {
                        setState(() {
                          if (obj3.backGroundColor == Colors.white) {
                            obj3.backGroundColor = const Color(0xff123456);
                            obj3.textColor = Colors.white;
                            obj3.borderColor = const Color(0xff123456);
                          } else {
                            obj3.backGroundColor = Colors.white;
                            obj3.textColor = const Color(0xff123456);
                            obj3.borderColor = Colors.blue;
                          }
                        });
                      },
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    obj4.defoultContainer(
                      text: 'Children\'s furniture',
                      width: width * 0.5,
                      onpressed: () {
                        setState(() {
                          if (obj4.backGroundColor == Colors.white) {
                            obj4.backGroundColor = const Color(0xff123456);
                            obj4.textColor = Colors.white;
                            obj4.borderColor = const Color(0xff123456);
                          } else {
                            obj4.backGroundColor = Colors.white;
                            obj4.textColor = const Color(0xff123456);
                            obj4.borderColor = Colors.blue;
                          }
                        });
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  children: [
                    obj5.defoultContainer(
                      text: 'Decorations',
                      width: width * 0.35,
                      onpressed: () {
                        setState(() {
                          if (obj5.backGroundColor == Colors.white) {
                            obj5.backGroundColor = const Color(0xff123456);
                            obj5.textColor = Colors.white;
                            obj5.borderColor = const Color(0xff123456);
                          } else {
                            obj5.backGroundColor = Colors.white;
                            obj5.textColor = const Color(0xff123456);
                            obj5.borderColor = Colors.blue;
                          }
                        });
                      },
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    obj6.defoultContainer(
                      text: 'Beds',
                      width: width * 0.16,
                      onpressed: () {
                        setState(() {
                          if (obj6.backGroundColor == Colors.white) {
                            obj6.backGroundColor = const Color(0xff123456);
                            obj6.textColor = Colors.white;
                            obj6.borderColor = const Color(0xff123456);
                          } else {
                            obj6.backGroundColor = Colors.white;
                            obj6.textColor = const Color(0xff123456);
                            obj6.borderColor = Colors.blue;
                          }
                        });
                      },
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    obj7.defoultContainer(
                      text: 'Sofas',
                      width: width * 0.19,
                      onpressed: () {
                        setState(() {
                          if (obj7.backGroundColor == Colors.white) {
                            obj7.backGroundColor = const Color(0xff123456);
                            obj7.textColor = Colors.white;
                            obj7.borderColor = const Color(0xff123456);
                          } else {
                            obj7.backGroundColor = Colors.white;
                            obj7.textColor = const Color(0xff123456);
                            obj7.borderColor = Colors.blue;
                          }
                        });
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                obj8.defoultContainer(
                  text: 'Separate furniture',
                  width: width * 0.5,
                  onpressed: () {
                    setState(() {
                      if (obj8.backGroundColor == Colors.white) {
                        obj8.backGroundColor = const Color(0xff123456);
                        obj8.textColor = Colors.white;
                        obj8.borderColor = const Color(0xff123456);
                      } else {
                        obj8.backGroundColor = Colors.white;
                        obj8.textColor = const Color(0xff123456);
                        obj8.borderColor = Colors.blue;
                      }
                    });
                  },
                ),
                SizedBox(
                  height: height * 0.3,
                ),
                InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const PickProfilePhoto())),
                    child: Container(
                        margin: EdgeInsets.only(
                            right: width * 0.15, left: width * 0.15),
                        padding: EdgeInsets.only(
                            left: width * 0.05,
                            right: width * 0.05,
                            top: width * 0.02,
                            bottom: width * 0.02),
                        decoration: BoxDecoration(
                            color: const Color(0xff123456),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: const Center(
                          child: Text('Next',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontFamily: 'Segoe UI',
                                  fontWeight: FontWeight.bold)),
                        )))
              ]),
        ),
      ),
    );
  }
}

class ColorsContainer {
  Color textColor = const Color(0xff123456);
  Color backGroundColor = Colors.white;
  Color borderColor = Colors.blue;

  Widget defoultContainer(
      {String? text,
      ColorsContainer? obj,
      double? width,
      EdgeInsets? margin,
      Function()? onpressed}) {
    return InkWell(
      onTap: onpressed,
      child: Container(
        margin: margin,
        width: width,
        decoration: BoxDecoration(
            boxShadow: const [BoxShadow(color: Colors.white)],
            color: this.backGroundColor,
            border: Border.all(
              color: this.borderColor,
              width: 3.0,
            ),
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          '$text',
          style: TextStyle(
              color: this.textColor,
              fontSize: 21,
              fontFamily: 'Segoe UI',
              fontWeight: FontWeight.normal),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
