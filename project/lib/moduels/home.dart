import 'package:flutter/material.dart' 
import 'package:adobe_xd/pinned.dart';
import './profile.dart';
import 'package:adobe_xd/page_link.dart';
import './singleproduct.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './cart.dart';
import './orders.dart';
import './register.dart';
import './notification.dart';
import './product.dart';

class home extends StatelessWidget {
  home({
    Key ?key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 46.0, end: 41.0),
            Pin(size: 44.0, start: 121.0),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xfff5f4f4),
                    borderRadius: BorderRadius.circular(60.0),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 27.0, end: 22.0),
                  Pin(size: 27.0, middle: 0.4706),
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 3.0, 3.0),
                        child: SizedBox.expand(
                            child: SvgPicture.string(
                          _svg_sswoti,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        )),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: SizedBox(
                          width: 7.0,
                          height: 7.0,
                          child: SvgPicture.string(
                            _svg_v0aoa5,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 80.0, middle: 0.3003),
            Pin(size: 19.0, start: 52.0),
            child: Text(
              'Hello hoda! ',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 14,
                color: const Color(0xffb8b8b8),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 62.0, start: 28.0),
            Pin(size: 62.0, start: 36.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => profile(),
                ),
              ],
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage(''),
                    fit: BoxFit.cover,
                  ),
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 242.0, middle: 0.5691),
            Pin(size: 24.0, start: 71.0),
            child: Text(
              'How can we help you today?',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 18,
                color: const Color(0xff00303f),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 127.0, start: 32.0),
            Pin(size: 27.0, middle: 0.2214),
            child: Text(
              'Most popular',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xff00303f),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 115.0, start: 32.0),
            Pin(size: 27.0, middle: 0.5061),
            child: Text(
              'Our product',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xff00303f),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 38.0, end: 33.0),
            Pin(size: 368.0, end: 58.0),
            child: SingleChildScrollView(
              primary: false,
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 36,
                runSpacing: 20,
                children: [
                  {
                    'text': 'solo sofa chair',
                    'text_0': '50\$',
                  },
                  {
                    'text': 'Dining table',
                    'text_0': '150\$',
                  },
                  {
                    'text': 'solo sofa chair',
                    'text_0': '50\$',
                  },
                  {
                    'text': 'solo sofa chair',
                    'text_0': '50\$',
                  }
                ].map((itemData) {
                  final text = itemData['text'];
                  final text_0 = itemData['text_0'];
                  return SizedBox(
                    width: 157.0,
                    height: 188.0,
                    child: Stack(
                      children: <Widget>[
                        PageLink(
                          links: [
                            PageLinkInfo(
                              transition: LinkTransition.Fade,
                              ease: Curves.easeOut,
                              duration: 0.3,
                              pageBuilder: () => singleproduct(),
                            ),
                          ],
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: const AssetImage(''),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(17.0),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xffcde5dd)),
                            ),
                            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 24.0),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 104.0, start: 8.0),
                          Pin(size: 21.0, end: 0.0),
                          child: PageLink(
                            links: [
                              PageLinkInfo(
                                transition: LinkTransition.Fade,
                                ease: Curves.easeOut,
                                duration: 0.3,
                                pageBuilder: () => singleproduct(),
                              ),
                            ],
                            child: Text(
                              text,
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 16,
                                color: const Color(0xff00303f),
                                fontWeight: FontWeight.w600,
                              ),
                              softWrap: false,
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 27.0, end: 14.0),
                          Pin(size: 21.0, end: 0.0),
                          child: Text(
                            text_0,
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 16,
                              color: const Color(0xffcdac81),
                              fontWeight: FontWeight.w600,
                            ),
                            softWrap: false,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 27.0, end: 14.0),
                          Pin(size: 26.0, start: 16.0),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0x8af5f4f4),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 17.3, middle: 0.4374),
                                Pin(start: 5.4, end: 5.5),
                                child: SvgPicture.string(
                                  _svg_lb63b2,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: -5.0),
            Pin(size: 71.0, end: 0.0),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xfff5f4f4),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36.0),
                      topRight: Radius.circular(36.0),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 43.8, end: 43.8),
                  Pin(size: 28.0, middle: 0.2907),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 28.0, middle: 0.5011),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: const AssetImage(''),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 23.1, start: 0.0),
                        Pin(start: 2.2, end: 2.7),
                        child: SvgPicture.string(
                          _svg_c2tbwd,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 24.2, middle: 0.2467),
                        Pin(start: 3.7, end: 3.2),
                        child: SvgPicture.string(
                          _svg_j6lz0n,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 20.8, end: 0.0),
                        Pin(start: 3.3, end: 3.9),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(size: 6.9, start: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child: SvgPicture.string(
                                _svg_vgan4u,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 5.8, end: 0.0),
                              Pin(start: 4.6, end: 4.6),
                              child: SvgPicture.string(
                                _svg_vyq,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Align(
                              alignment: Alignment(1.0, 0.051),
                              child: SizedBox(
                                width: 14.0,
                                height: 1.0,
                                child: SvgPicture.string(
                                  _svg_rghlny,
                                  allowDrawingOutsideViewBox: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 25.4, middle: 0.7606),
                        Pin(start: 1.0, end: 1.5),
                        child: Stack(
                          children: <Widget>[
                            Center(
                              child: SizedBox(
                                width: 7.0,
                                height: 7.0,
                                child: SvgPicture.string(
                                  _svg_u3u7nx,
                                  allowDrawingOutsideViewBox: true,
                                ),
                              ),
                            ),
                            SizedBox.expand(
                                child: SvgPicture.string(
                              _svg_vw66nm,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 37.0, middle: 0.4987),
                  Pin(size: 17.0, end: 9.0),
                  child: Text(
                    'Home',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 13,
                      color: const Color(0xffcdac81),
                      fontWeight: FontWeight.w700,
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 57.0, middle: 0.2911),
                  Pin(size: 17.0, end: 9.0),
                  child: Text(
                    'Favourite',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 13,
                      color: const Color(0xff00303f),
                      fontWeight: FontWeight.w700,
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 26.0, start: 43.0),
                  Pin(size: 17.0, end: 9.0),
                  child: Text(
                    'Cart',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 13,
                      color: const Color(0xff00303f),
                      fontWeight: FontWeight.w700,
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 44.0, middle: 0.7161),
                  Pin(size: 17.0, end: 9.0),
                  child: Text(
                    'Setting',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 13,
                      color: const Color(0xff00303f),
                      fontWeight: FontWeight.w700,
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 44.0, end: 30.0),
                  Pin(size: 17.0, end: 9.0),
                  child: Text(
                    'Logout',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 13,
                      color: const Color(0xff00303f),
                      fontWeight: FontWeight.w700,
                    ),
                    softWrap: false,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: -5.0),
            Pin(size: 85.0, end: 0.0),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff00303f),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36.0),
                      topRight: Radius.circular(36.0),
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(0.0, 14.0, 0.0, 0.0),
                ),
                Pinned.fromPins(
                  Pin(start: 43.8, end: 43.8),
                  Pin(size: 30.4, middle: 0.4399),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 23.1, start: 0.0),
                        Pin(size: 23.1, end: 2.6),
                        child: PageLink(
                          links: [
                            PageLinkInfo(
                              transition: LinkTransition.Fade,
                              ease: Curves.easeIn,
                              duration: 0.5,
                              pageBuilder: () => cart(),
                            ),
                          ],
                          child: SvgPicture.string(
                            _svg_gvzevc,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 30.0, middle: 0.2454),
                        Pin(start: 0.0, end: 0.4),
                        child: PageLink(
                          links: [
                            PageLinkInfo(
                              transition: LinkTransition.Fade,
                              ease: Curves.easeOut,
                              duration: 0.3,
                              pageBuilder: () => orders(),
                            ),
                          ],
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: const AssetImage(''),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 20.8, end: 0.0),
                        Pin(size: 20.8, end: 3.8),
                        child: PageLink(
                          links: [
                            PageLinkInfo(
                              transition: LinkTransition.Fade,
                              ease: Curves.easeOut,
                              duration: 0.3,
                              pageBuilder: () => register(),
                            ),
                          ],
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromPins(
                                Pin(size: 6.9, start: 0.0),
                                Pin(start: 0.0, end: 0.0),
                                child: SvgPicture.string(
                                  _svg_b7dlp,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 5.8, end: 0.0),
                                Pin(start: 4.6, end: 4.6),
                                child: SvgPicture.string(
                                  _svg_rmc4rt,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Align(
                                alignment: Alignment(1.0, 0.051),
                                child: SizedBox(
                                  width: 14.0,
                                  height: 1.0,
                                  child: SvgPicture.string(
                                    _svg_bt4fkn,
                                    allowDrawingOutsideViewBox: true,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 22.7, middle: 0.7665),
                        Pin(start: 2.0, end: 0.0),
                        child: PageLink(
                          links: [
                            PageLinkInfo(
                              transition: LinkTransition.Fade,
                              ease: Curves.easeOut,
                              duration: 0.7,
                              pageBuilder: () => notification(),
                            ),
                          ],
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: SizedBox(
                                  width: 7.0,
                                  height: 4.0,
                                  child: SvgPicture.string(
                                    _svg_mvgd7d,
                                    allowDrawingOutsideViewBox: true,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.1),
                                child: SizedBox.expand(
                                    child: SvgPicture.string(
                                  _svg_inuljf,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 41.0, middle: 0.292),
                  Pin(size: 17.0, end: 9.0),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => orders(),
                      ),
                    ],
                    child: Text(
                      'Orders',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 13,
                        color: const Color(0xfff5f4f4),
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 26.0, start: 43.0),
                  Pin(size: 17.0, end: 9.0),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeIn,
                        duration: 0.5,
                        pageBuilder: () => cart(),
                      ),
                    ],
                    child: Text(
                      'Cart',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 13,
                        color: const Color(0xfff5f4f4),
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 73.0, middle: 0.7296),
                  Pin(size: 17.0, end: 9.0),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeIn,
                        duration: 0.5,
                        pageBuilder: () => notification(),
                      ),
                    ],
                    child: Text(
                      'Notification',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 13,
                        color: const Color(0xfff5f4f4),
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 44.0, end: 30.0),
                  Pin(size: 17.0, end: 9.0),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => register(),
                      ),
                    ],
                    child: Text(
                      'Logout',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 13,
                        color: const Color(0xfff5f4f4),
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 83.0, middle: 0.5014),
                  Pin(start: 0.0, end: 2.0),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff00303f),
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(9999.0, 9999.0)),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(9999.0, 9999.0)),
                        ),
                        margin: EdgeInsets.fromLTRB(6.0, 6.0, 5.0, 5.0),
                      ),
                      Align(
                        alignment: Alignment(0.059, 0.038),
                        child: SizedBox(
                          width: 49.0,
                          height: 37.0,
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment(0.0, 0.22),
                                child: SizedBox(
                                  width: 15.0,
                                  height: 15.0,
                                  child: SvgPicture.string(
                                    _svg_wles,
                                    allowDrawingOutsideViewBox: true,
                                  ),
                                ),
                              ),
                              SizedBox.expand(
                                  child: SvgPicture.string(
                                _svg_jc4xv,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 0.0, start: 19.0),
            Pin(size: 0.0, end: 165.0),
            child: Stack(
              children: <Widget>[],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 28.0, end: -45.0),
            Pin(size: 174.0, middle: 0.3245),
            child: SingleChildScrollView(
              primary: false,
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 23,
                runSpacing: 19,
                children: [
                  {
                    'text': 'Green chair',
                    'text_0': '50\$',
                  },
                  {
                    'text': 'Modern bed',
                    'text_0': '100\$',
                  },
                  {
                    'text': 'Gray sofa',
                    'text_0': '50\$',
                  }
                ].map((itemData) {
                  final text = itemData['text'];
                  final text_0 = itemData['text_0'];
                  return SizedBox(
                    width: 137.0,
                    height: 174.0,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: const AssetImage(''),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(17.0),
                            border: Border.all(
                                width: 1.0, color: const Color(0xffcde5dd)),
                          ),
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 29.0),
                        ),
                        Pinned.fromPins(
                          Pin(size: 83.0, start: 5.0),
                          Pin(size: 21.0, end: 0.0),
                          child: Text(
                            text,
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 16,
                              color: const Color(0xff00303f),
                              fontWeight: FontWeight.w600,
                            ),
                            softWrap: false,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 27.0, end: 7.0),
                          Pin(size: 21.0, end: 0.0),
                          child: Text(
                            text_0,
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 16,
                              color: const Color(0xffcdac81),
                              fontWeight: FontWeight.w600,
                            ),
                            softWrap: false,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 27.0, end: 4.0),
                          Pin(size: 26.0, start: 6.0),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0x8af5f4f4),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 17.3, middle: 0.4374),
                                Pin(start: 5.4, end: 5.5),
                                child: SvgPicture.string(
                                  _svg_lb63b2,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 60.0, end: 30.0),
            Pin(size: 21.0, middle: 0.5061),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => product(),
                ),
              ],
              child: Text(
                'See all>',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 16,
                  color: const Color(0xffb8b8b8),
                  fontWeight: FontWeight.w700,
                ),
                softWrap: false,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 25.4, end: 21.3),
            Pin(size: 25.4, start: 50.6),
            child: Stack(
              children: <Widget>[
                Center(
                  child: SizedBox(
                    width: 7.0,
                    height: 7.0,
                    child: SvgPicture.string(
                      _svg_u3u7nx,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                ),
                SizedBox.expand(
                    child: SvgPicture.string(
                  _svg_vw66nm,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_lb63b2 =
    '<svg viewBox="11.3 12.6 17.3 15.1" ><path transform="translate(8.93, 8.14)" d="M 18.26703071594238 5.82941198348999 C 16.49166488647461 4.053211688995361 13.61234092712402 4.053211688995361 11.83697414398193 5.82941198348999 L 10.96090030670166 6.705486297607422 L 10.08482551574707 5.82941198348999 C 8.309215545654297 4.0538010597229 5.43038272857666 4.053800106048584 3.65477180480957 5.829411029815674 C 1.879160642623901 7.605021476745605 1.879161357879639 10.48385620117188 3.654772281646729 12.25946617126465 L 4.53084659576416 13.13554096221924 L 10.96090030670166 19.56559753417969 L 17.39095687866211 13.13554096221924 L 18.26703071594238 12.25946617126465 C 20.04323196411133 10.48410034179688 20.04323196411133 7.604777336120605 18.26703262329102 5.829410552978516 Z" fill="none" stroke="#00303f" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_sswoti =
    '<svg viewBox="4.5 4.5 24.0 24.0" ><path  d="M 28.5 16.5 C 28.5 23.12741851806641 23.12741661071777 28.5 16.5 28.5 C 9.87258243560791 28.5 4.5 23.12741661071777 4.5 16.5 C 4.5 9.87258243560791 9.872583389282227 4.5 16.5 4.5 C 23.12741851806641 4.5 28.5 9.872583389282227 28.5 16.5 Z" fill="none" stroke="#b8b8b8" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_v0aoa5 =
    '<svg viewBox="25.0 25.0 6.5 6.5" ><path  d="M 31.5 31.5 L 24.97500038146973 24.97500038146973" fill="none" stroke="#b8b8b8" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_c2tbwd =
    '<svg viewBox="8.0 863.2 23.1 23.1" ><path transform="translate(6.46, 860.19)" d="M 8.433334350585938 21.4888916015625 C 7.162223339080811 21.4888916015625 6.13377857208252 22.52889251708984 6.13377857208252 23.80000305175781 C 6.13377857208252 25.07111358642578 7.162223339080811 26.11111450195312 8.433334350585938 26.11111450195312 C 9.704444885253906 26.11111450195312 10.74444580078125 25.07111358642578 10.74444580078125 23.80000305175781 C 10.74444580078125 22.52889251708984 9.704444885253906 21.4888916015625 8.433334350585938 21.4888916015625 Z M 1.5 3 L 1.5 5.311111450195312 L 3.811111450195312 5.311111450195312 L 7.97111177444458 14.08177947998047 L 6.411111354827881 16.91289138793945 C 6.226222515106201 17.23644638061523 6.122222423553467 17.6177806854248 6.122222423553467 18.02222442626953 C 6.122222423553467 19.2933349609375 7.162222385406494 20.33333587646484 8.433334350585938 20.33333587646484 L 22.30000305175781 20.33333587646484 L 22.30000305175781 18.02222442626953 L 8.918667793273926 18.02222442626953 C 8.756890296936035 18.02222442626953 8.629778861999512 17.89511299133301 8.629778861999512 17.73333549499512 L 8.664445877075195 17.59466934204102 L 9.704445838928223 15.71111297607422 L 18.3133373260498 15.71111297607422 C 19.18000411987305 15.71111297607422 19.94266891479492 15.23733520507812 20.3355598449707 14.52089023590088 L 24.47244834899902 7.021334171295166 C 24.56489181518555 6.859556198120117 24.61111450195312 6.663111686706543 24.61111450195312 6.466667175292969 C 24.61111450195312 5.831111907958984 24.09111595153809 5.311111450195312 23.45555877685547 5.311111450195312 L 6.364889621734619 5.311111450195312 L 5.278667449951172 3 L 1.5 3 Z M 19.9888916015625 21.4888916015625 C 18.71778106689453 21.4888916015625 17.68933486938477 22.52889251708984 17.68933486938477 23.80000305175781 C 17.68933486938477 25.07111358642578 18.7177791595459 26.11111450195312 19.9888916015625 26.11111450195312 C 21.2600040435791 26.11111450195312 22.30000305175781 25.07111358642578 22.30000305175781 23.80000305175781 C 22.30000305175781 22.52889251708984 21.26000213623047 21.4888916015625 19.9888916015625 21.4888916015625 Z" fill="none" stroke="#00303f" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vgan4u =
    '<svg viewBox="0.0 0.0 6.9 20.8" ><path transform="translate(-4.5, -4.5)" d="M 11.43333435058594 25.30000305175781 L 6.811111450195312 25.30000305175781 C 5.534719467163086 25.30000305175781 4.5 24.26528358459473 4.5 22.9888916015625 L 4.5 6.811111450195312 C 4.5 5.534719467163086 5.534720420837402 4.499999523162842 6.811111927032471 4.5 L 11.43333435058594 4.5" fill="none" stroke="#00303f" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_vyq =
    '<svg viewBox="15.0 4.6 5.8 11.6" ><path transform="translate(-8.98, -5.88)" d="M 24 22.05555725097656 L 29.77777862548828 16.27777862548828 L 24 10.5" fill="none" stroke="#00303f" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_rghlny =
    '<svg viewBox="6.9 10.4 13.9 1.0" ><path transform="translate(-6.57, -7.6)" d="M 27.36666870117188 18 L 13.5 18" fill="none" stroke="#00303f" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_j6lz0n =
    '<svg viewBox="86.0 864.7 24.2 21.1" ><path transform="translate(83.63, 860.24)" d="M 24.61522483825684 6.35981559753418 C 22.13298606872559 3.876410484313965 18.10724258422852 3.876410484313965 15.62500190734863 6.359816551208496 L 14.40011310577393 7.584705352783203 L 13.17522430419922 6.35981559753418 C 10.69264316558838 3.877233982086182 6.667581558227539 3.877233266830444 4.185000419616699 6.35981559753418 C 1.702417850494385 8.84239673614502 1.702418804168701 12.86745834350586 4.185000896453857 15.3500394821167 L 5.409889221191406 16.57492828369141 L 14.40011310577393 25.56515121459961 L 23.39033508300781 16.57492828369141 L 24.61522483825684 15.3500394821167 C 27.0986328125 12.86779975891113 27.0986328125 8.84205436706543 24.61522674560547 6.359814643859863 Z" fill="none" stroke="#00303f" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_u3u7nx =
    '<svg viewBox="9.2 9.2 6.9 6.9" ><path transform="translate(-4.26, -4.26)" d="M 20.43333435058594 16.96666717529297 C 20.43333435058594 18.88125419616699 18.88125419616699 20.43333435058594 16.96666717529297 20.43333435058594 C 15.05208015441895 20.43333435058594 13.5 18.88125419616699 13.5 16.96666717529297 C 13.5 15.05208015441895 15.05208015441895 13.5 16.96666717529297 13.5 C 18.88125419616699 13.5 20.43333435058594 15.05208015441895 20.43333435058594 16.96666717529297 Z" fill="none" stroke="#00303f" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_vw66nm =
    '<svg viewBox="0.0 0.0 25.4 25.4" ><path transform="translate(-1.5, -1.5)" d="M 22.76222610473633 17.67778015136719 C 22.44751358032227 18.39086151123047 22.5985221862793 19.22369956970215 23.14355850219727 19.78089332580566 L 23.21289253234863 19.8502254486084 C 23.6468677520752 20.28371810913086 23.89071083068848 20.8719482421875 23.89071083068848 21.48533630371094 C 23.89071083068848 22.09872627258301 23.6468677520752 22.68695640563965 23.21289443969727 23.12044715881348 C 22.77940368652344 23.55442047119141 22.19117546081543 23.79826545715332 21.57778358459473 23.79826545715332 C 20.96439552307129 23.79826545715332 20.37616539001465 23.55442047119141 19.94267463684082 23.12044715881348 L 19.87333869934082 23.05111312866211 C 19.3161449432373 22.50607490539551 18.48330879211426 22.35506820678711 17.77022743225098 22.66977691650391 C 17.07172966003418 22.96914672851562 16.61770439147949 23.65472602844238 16.61467170715332 24.4146671295166 L 16.61467170715332 24.61111450195312 C 16.61467170715332 25.88750457763672 15.57995128631592 26.92222595214844 14.30355930328369 26.92222595214844 C 13.02716732025146 26.92222595214844 11.99244785308838 25.88750457763672 11.99244785308838 24.61111450195312 L 11.99244785308838 24.50711441040039 C 11.97414016723633 23.72442245483398 11.47923183441162 23.032470703125 10.74444675445557 22.76222801208496 C 10.03136539459229 22.44751167297363 9.198528289794922 22.5985221862793 8.641334533691406 23.1435604095459 L 8.572001457214355 23.21289253234863 C 8.138510704040527 23.6468677520752 7.550280570983887 23.89071083068848 6.936890125274658 23.89071083068848 C 6.323500156402588 23.89071083068848 5.735270500183105 23.6468677520752 5.301779270172119 23.21289253234863 C 4.867805957794189 22.7794017791748 4.623961925506592 22.19117546081543 4.623961925506592 21.57778358459473 C 4.623961925506592 20.96439361572266 4.867805957794189 20.37616539001465 5.301778793334961 19.94267272949219 L 5.37111234664917 19.87333869934082 C 5.916147232055664 19.3161449432373 6.067156791687012 18.48330879211426 5.752445220947266 17.77022743225098 C 5.453078269958496 17.07172966003418 4.767499923706055 16.61770439147949 4.007556438446045 16.61467170715332 L 3.811111450195312 16.61467170715332 C 2.534719705581665 16.61467170715332 1.5 15.57995128631592 1.5 14.30355930328369 C 1.5 13.02716732025146 2.534720182418823 11.99244785308838 3.811111927032471 11.99244785308838 L 3.915111541748047 11.99244785308838 C 4.69780445098877 11.97414016723633 5.389757633209229 11.47923278808594 5.660001277923584 10.74444675445557 C 5.974712371826172 10.03136444091797 5.823702812194824 9.198528289794922 5.278666973114014 8.641334533691406 L 5.209333896636963 8.572001457214355 C 4.775361061096191 8.138510704040527 4.531516075134277 7.550281047821045 4.531516075134277 6.936891078948975 C 4.531516075134277 6.32349967956543 4.775360584259033 5.735270023345947 5.209334373474121 5.301778793334961 C 5.642825603485107 4.867805480957031 6.23105525970459 4.623960971832275 6.844446182250977 4.623961448669434 C 7.45783519744873 4.623961448669434 8.046065330505371 4.867805480957031 8.479556083679199 5.301778793334961 L 8.54888916015625 5.37111234664917 C 9.106083869934082 5.91614818572998 9.938919067382812 6.067156791687012 10.65200042724609 5.752445220947266 L 10.74444580078125 5.752445220947266 C 11.442946434021 5.453077793121338 11.89697074890137 4.767498970031738 11.90000152587891 4.007556438446045 L 11.90000152587891 3.811111450195312 C 11.90000152587891 2.534719705581665 12.93472099304199 1.499999642372131 14.21111297607422 1.5 C 15.48750495910645 1.5 16.52222442626953 2.534719944000244 16.52222442626953 3.811111450195312 L 16.52222442626953 3.915111541748047 C 16.52525520324707 4.675055503845215 16.97928237915039 5.360633850097656 17.67778205871582 5.660001277923584 C 18.3908634185791 5.974712371826172 19.22369956970215 5.823704242706299 19.78089332580566 5.27866792678833 L 19.8502254486084 5.209334373474121 C 20.28371810913086 4.77536153793335 20.8719482421875 4.531517505645752 21.48533630371094 4.531517505645752 C 22.09872627258301 4.531517505645752 22.68695640563965 4.77536153793335 23.12044715881348 5.209334373474121 C 23.55442047119141 5.642826080322266 23.79826545715332 6.231055736541748 23.79826545715332 6.844446182250977 C 23.79826545715332 7.457836151123047 23.55442047119141 8.046065330505371 23.12044715881348 8.479557037353516 L 23.05111312866211 8.548890113830566 C 22.50607490539551 9.106082916259766 22.35506820678711 9.938919067382812 22.66977691650391 10.65200233459473 L 22.66977882385254 10.74444580078125 C 22.96914672851562 11.442946434021 23.65472602844238 11.89696979522705 24.4146671295166 11.90000152587891 L 24.61111450195312 11.90000152587891 C 25.88750457763672 11.90000152587891 26.92222595214844 12.93472099304199 26.92222595214844 14.21111297607422 C 26.92222595214844 15.48750495910645 25.88750457763672 16.52222442626953 24.61111450195312 16.52222442626953 L 24.50711441040039 16.52222442626953 C 23.74717330932617 16.5252571105957 23.06159591674805 16.97928237915039 22.76222801208496 17.67778205871582 Z" fill="none" stroke="#00303f" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_gvzevc =
    '<svg viewBox="8.0 863.2 23.1 23.1" ><path transform="translate(6.46, 860.19)" d="M 8.433334350585938 21.4888916015625 C 7.162223339080811 21.4888916015625 6.13377857208252 22.52889251708984 6.13377857208252 23.80000305175781 C 6.13377857208252 25.07111358642578 7.162223339080811 26.11111450195312 8.433334350585938 26.11111450195312 C 9.704444885253906 26.11111450195312 10.74444580078125 25.07111358642578 10.74444580078125 23.80000305175781 C 10.74444580078125 22.52889251708984 9.704444885253906 21.4888916015625 8.433334350585938 21.4888916015625 Z M 1.5 3 L 1.5 5.311111450195312 L 3.811111450195312 5.311111450195312 L 7.97111177444458 14.08177947998047 L 6.411111354827881 16.91289138793945 C 6.226222515106201 17.23644638061523 6.122222423553467 17.6177806854248 6.122222423553467 18.02222442626953 C 6.122222423553467 19.2933349609375 7.162222385406494 20.33333587646484 8.433334350585938 20.33333587646484 L 22.30000305175781 20.33333587646484 L 22.30000305175781 18.02222442626953 L 8.918667793273926 18.02222442626953 C 8.756890296936035 18.02222442626953 8.629778861999512 17.89511299133301 8.629778861999512 17.73333549499512 L 8.664445877075195 17.59466934204102 L 9.704445838928223 15.71111297607422 L 18.3133373260498 15.71111297607422 C 19.18000411987305 15.71111297607422 19.94266891479492 15.23733520507812 20.3355598449707 14.52089023590088 L 24.47244834899902 7.021334171295166 C 24.56489181518555 6.859556198120117 24.61111450195312 6.663111686706543 24.61111450195312 6.466667175292969 C 24.61111450195312 5.831111907958984 24.09111595153809 5.311111450195312 23.45555877685547 5.311111450195312 L 6.364889621734619 5.311111450195312 L 5.278667449951172 3 L 1.5 3 Z M 19.9888916015625 21.4888916015625 C 18.71778106689453 21.4888916015625 17.68933486938477 22.52889251708984 17.68933486938477 23.80000305175781 C 17.68933486938477 25.07111358642578 18.7177791595459 26.11111450195312 19.9888916015625 26.11111450195312 C 21.2600040435791 26.11111450195312 22.30000305175781 25.07111358642578 22.30000305175781 23.80000305175781 C 22.30000305175781 22.52889251708984 21.26000213623047 21.4888916015625 19.9888916015625 21.4888916015625 Z" fill="none" stroke="#f5f4f4" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_b7dlp =
    '<svg viewBox="0.0 0.0 6.9 20.8" ><path transform="translate(-4.5, -4.5)" d="M 11.43333435058594 25.30000305175781 L 6.811111450195312 25.30000305175781 C 5.534719467163086 25.30000305175781 4.5 24.26528358459473 4.5 22.9888916015625 L 4.5 6.811111450195312 C 4.5 5.534719467163086 5.534720420837402 4.499999523162842 6.811111927032471 4.5 L 11.43333435058594 4.5" fill="none" stroke="#f5f4f4" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_rmc4rt =
    '<svg viewBox="15.0 4.6 5.8 11.6" ><path transform="translate(-8.98, -5.88)" d="M 24 22.05555725097656 L 29.77777862548828 16.27777862548828 L 24 10.5" fill="none" stroke="#f5f4f4" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_bt4fkn =
    '<svg viewBox="6.9 10.4 13.9 1.0" ><path transform="translate(-6.57, -7.6)" d="M 27.36666870117188 18 L 13.5 18" fill="none" stroke="#f5f4f4" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_mvgd7d =
    '<svg viewBox="14.7 28.6 6.8 3.8" ><path transform="translate(0.09, 0.27)" d="M 18.030517578125 32.10378646850586 C 20.24145889282227 32.10378646850586 21.45001602172852 30.53977203369141 21.45001602172852 28.3359375 L 14.60390567779541 28.3359375 C 14.60390567779541 30.53977203369141 15.81246089935303 32.10378646850586 18.030517578125 32.10378646850586 Z" fill="#f5f4f4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_inuljf =
    '<svg viewBox="6.8 3.9 22.7 23.3" ><path transform="translate(0.0, 0.0)" d="M 29.21478652954102 24.99487495422363 C 28.11997604370117 23.55171585083008 25.96590423583984 22.70572662353516 25.96590423583984 16.24351119995117 C 25.96590423583984 9.610678672790527 23.03693580627441 6.944748401641846 20.30702209472656 6.304925441741943 C 20.05109214782715 6.24094295501709 19.86625671386719 6.155632972717285 19.86625671386719 5.885485649108887 L 19.86625671386719 5.679320812225342 C 19.86625671386719 4.726695537567139 19.08424949645996 3.923361778259277 18.13162231445312 3.930470943450928 C 17.17899513244629 3.916252613067627 16.3969898223877 4.726695537567139 16.3969898223877 5.679320812225342 L 16.3969898223877 5.885485649108887 C 16.3969898223877 6.148524284362793 16.2121524810791 6.24094295501709 15.95622253417969 6.304925441741943 C 13.21920013427734 6.951858043670654 10.29734039306641 9.610678672790527 10.29734039306641 16.24351119995117 C 10.29734039306641 22.70572662353516 8.143268585205078 23.54460716247559 7.048460483551025 24.99486923217773 C 6.344655513763428 25.92616844177246 7.012915134429932 27.25557708740234 8.178815841674805 27.25557708740234 L 18.16005706787109 27.25557708740234 L 28.0915355682373 27.25557708740234 C 29.25032997131348 27.25558090209961 29.9185905456543 25.91905975341797 29.21478652954102 24.99487495422363 Z" fill="#f5f4f4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wles =
    '<svg viewBox="21.7 21.3 14.7 14.7" ><path transform="translate(7.71, 6.04)" d="M 28.63151168823242 22.63020706176758 C 28.63151168823242 26.68245315551758 25.34651947021484 29.96744918823242 21.29427337646484 29.96744918823242 C 17.24202346801758 29.96744918823242 13.95703220367432 26.68245315551758 13.95703220367432 22.63020706176758 C 13.95703220367432 18.57796287536621 17.24202346801758 15.29296875 21.29427337646484 15.29296875 C 25.34651947021484 15.29296875 28.63151168823242 18.57796287536621 28.63151168823242 22.63020706176758 Z" fill="#cdac81" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jc4xv =
    '<svg viewBox="4.5 7.9 49.0 36.8" ><path transform="translate(0.0, 0.0)" d="M 49.60807037353516 14 L 42.65364456176758 14 C 42.06666564941406 14 41.51796722412109 13.74479293823242 41.12239456176758 13.31093788146973 C 37.49843597412109 9.253124237060547 36.13307189941406 7.875000476837158 34.65286254882812 7.875000476837158 L 23.74270820617676 7.875000476837158 C 22.2497386932373 7.875000476837158 20.78229141235352 9.253124237060547 17.14557266235352 13.32369995117188 C 16.76276016235352 13.75755310058594 16.20130157470703 14 15.62708187103271 14 L 15.10390377044678 14 L 15.10390377044678 12.97916793823242 C 15.10390377044678 12.41770935058594 14.64452838897705 11.95833396911621 14.0830717086792 11.95833396911621 L 10.76536273956299 11.95833396911621 C 10.20390510559082 11.95833396911621 9.744529724121094 12.41770935058594 9.744529724121094 12.97916793823242 L 9.744529724121094 14 L 8.787498474121094 14 C 6.528905868530273 14 4.5 15.68437576293945 4.5 17.91744995117188 L 4.5 40.37578201293945 C 4.5 42.60885238647461 6.528905868530273 44.625 8.774739265441895 44.625 L 49.60807037353516 44.625 C 51.85390472412109 44.625 53.5 42.60885238647461 53.5 40.37578201293945 L 53.5 17.91744995117188 C 53.5 15.68437576293945 51.85390472412109 14 49.60807037353516 14 Z M 29.51041603088379 39.57187652587891 C 23.09192848205566 39.86536407470703 17.80911445617676 34.58255386352539 18.10260581970215 28.16406440734863 C 18.35781288146973 22.56224060058594 22.88776206970215 18.03229331970215 28.48958396911621 17.77708435058594 C 34.9080696105957 17.48359489440918 40.19088363647461 22.76640701293945 39.89739608764648 29.18489646911621 C 39.64218902587891 34.78672027587891 35.11223983764648 39.31666564941406 29.51041603088379 39.57187652587891 Z M 41.25 21.40104293823242 C 40.33124923706055 21.40104293823242 39.59114456176758 20.66093826293945 39.59114456176758 19.7421875 C 39.59114456176758 18.82343673706055 40.33124923706055 18.08333396911621 41.25 18.08333396911621 C 42.16875076293945 18.08333396911621 42.90885162353516 18.82343673706055 42.90885162353516 19.7421875 C 42.90885162353516 20.66093826293945 42.16875076293945 21.40104293823242 41.25 21.40104293823242 Z" fill="#cdac81" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
