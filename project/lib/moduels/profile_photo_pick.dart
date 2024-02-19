import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:project/layout/homepage/home_page.dart';

class PickProfilePhoto extends StatefulWidget {
  const PickProfilePhoto({super.key});

  @override
  State<PickProfilePhoto> createState() => _PickProfilePhotoState();
}

class _PickProfilePhotoState extends State<PickProfilePhoto> {
  File? image;
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image : $e');
    }
  }

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
      body: Column(
        children: [
          const ListTile(
            title: Text('Pick profile picture',
                style: TextStyle(
                    color: Color(0xff123456),
                    fontSize: 32,
                    fontFamily: 'Segoe UI',
                    fontWeight: FontWeight.bold)),
            subtitle: Text('\nHave a favorite selfie? upload it now.  ',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontFamily: 'Segoe UI',
                    fontWeight: FontWeight.normal)),
          ),
          const SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () {
              pickImage();
            },
            child: Container(
              height: height * 0.3,
              width: width * 0.6,
              decoration: BoxDecoration(
                border: Border.all(
                    color: const Color(0xff123456),
                    width: 7,
                    style: BorderStyle.solid),
              ),
              child: image != null
                  ? Image.file(image!)
                  : Icon(
                      Icons.camera_alt,
                      size: 50,
                    ),
            ),
          ),
          SizedBox(
            height: height * 0.3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                  onTap: (() {}),
                  child: Container(
                      margin: EdgeInsets.only(
                          right: width * 0.03, left: width * 0.03),
                      padding: EdgeInsets.only(
                          left: width * 0.05,
                          right: width * 0.05,
                          top: width * 0.02,
                          bottom: width * 0.02),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.0),
                          border:
                              Border.all(color: Color(0xff123456), width: 3.0)),
                      child: const Center(
                        child: Text('Skip for now',
                            style: TextStyle(
                                color: Color(0xff123456),
                                fontSize: 21,
                                fontFamily: 'Segoe UI',
                                fontWeight: FontWeight.bold)),
                      ))),
              SizedBox(
                width: width * 0.23,
              ),
              InkWell(
                  onTap: (() => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const HomeLayout()))),
                  child: Container(
                      margin: EdgeInsets.only(
                          right: width * 0.03, left: width * 0.03),
                      padding: EdgeInsets.only(
                          left: width * 0.05,
                          right: width * 0.05,
                          top: width * 0.03,
                          bottom: width * 0.03),
                      decoration: BoxDecoration(
                          color: const Color(0xff123456),
                          borderRadius: BorderRadius.circular(30.0),
                          border:
                              Border.all(color: Color(0xff123456), width: 3.0)),
                      child: const Center(
                        child: Text('Next',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Segoe UI',
                                fontWeight: FontWeight.bold)),
                      ))),
            ],
          ),
        ],
      ),
    );
  }
}
