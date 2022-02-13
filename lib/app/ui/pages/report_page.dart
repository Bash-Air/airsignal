import 'package:flutter/material.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({Key? key}) : super(key: key);

  get child => null;

  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator ReportpageWidget - FRAME
    return Container(
        width: 375,
        height: 812,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 611,
              left: 16,
              child: SizedBox(
                  width: 343,
                  height: 74,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 343,
                            height: 74,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              color: Color.fromRGBO(241, 245, 255, 1),
                            ))),
                    const Positioned(
                        top: 16,
                        left: 16,
                        child: Text(
                          'Расскажите что вы почувствовали...',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(
                                  145, 162, 207, 0.4000000059604645),
                              fontFamily: 'SF Pro Display',
                              fontSize: 16,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1.5),
                        )),
                  ]))),
          Positioned(
              top: 429,
              left: 16,
              child: Container(
                  width: 248,
                  height: 48,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ))),
          const Positioned(
              top: 443,
              left: 88,
              child: Text(
                '// Value',
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Color.fromRGBO(27, 181, 92, 1),
                    fontFamily: 'Inter',
                    fontSize: 16,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1.5),
              )),
          Positioned(
              top: 477,
              left: 16,
              child: Container(
                  width: 248,
                  height: 48,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ))),
          const Positioned(
              top: 491,
              left: 88,
              child: Text(
                '// Value',
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Color.fromRGBO(27, 181, 92, 1),
                    fontFamily: 'Inter',
                    fontSize: 16,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1.5),
              )),
          Positioned(
              top: 525,
              left: 16,
              child: Container(
                  width: 248,
                  height: 48,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ))),
          const Positioned(
              top: 539,
              left: 88,
              child: Text(
                '// Value',
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Color.fromRGBO(27, 181, 92, 1),
                    fontFamily: 'Inter',
                    fontSize: 16,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1.5),
              )),
          Positioned(
              top: 711,
              left: 16,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  color: Color.fromRGBO(128, 163, 255, 1),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 110, vertical: 22),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Text(
                      'Отправить',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'SF Pro Display',
                          fontSize: 18,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1.3333333333333333),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 51,
              left: 16,
              child: SizedBox(
                  width: 228,
                  height: 43,
                  child: Stack(children: <Widget>[
                    const Positioned(
                        top: 7,
                        left: 53,
                        child: Text(
                          'Форма жалобы',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'SF Pro Display',
                              fontSize: 24,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 0,
                        left: 0,
                        child: SizedBox(
                            width: 43,
                            height: 43,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 43,
                                      height: 43,
                                      decoration: BoxDecoration(
                                        color: const Color.fromRGBO(
                                            255, 255, 255, 1),
                                        border: Border.all(
                                          color: const Color.fromRGBO(
                                              241, 245, 255, 1),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.all(
                                            Radius.elliptical(43, 43)),
                                      ))),
                              Positioned(
                                  top: 13,
                                  left: 10,
                                  child: Container(
                                    decoration: const BoxDecoration(),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 0, vertical: 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Container(
                                            width: 22,
                                            height: 3,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10),
                                                bottomLeft: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                              ),
                                              color:
                                                  Color.fromRGBO(51, 51, 51, 1),
                                            )),
                                        const SizedBox(height: 4),
                                        Container(
                                            width: 22,
                                            height: 3,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10),
                                                bottomLeft: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                              ),
                                              color:
                                                  Color.fromRGBO(51, 51, 51, 1),
                                            )),
                                        const SizedBox(height: 4),
                                        Container(
                                            width: 22,
                                            height: 3,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10),
                                                bottomLeft: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                              ),
                                              color:
                                                  Color.fromRGBO(51, 51, 51, 1),
                                            )),
                                      ],
                                    ),
                                  )),
                            ]))),
                  ]))),
          Positioned(
              top: 178,
              left: 16,
              child: SizedBox(
                  width: 343,
                  height: 69,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: SizedBox(
                            width: 343,
                            height: 69,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 343,
                                      height: 69,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(6),
                                          topRight: Radius.circular(6),
                                          bottomLeft: Radius.circular(6),
                                          bottomRight: Radius.circular(6),
                                        ),
                                        color: Color.fromRGBO(128, 163, 255, 1),
                                      ))),
                            ]))),
                    Positioned(
                        top: 24,
                        left: 64,
                        child: Container(
                          decoration: const BoxDecoration(),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const <Widget>[
                              Text(
                                'Покажите что вокруг вас',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 18,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    height: 1.3333333333333333),
                              ),
                            ],
                          ),
                        )),
                  ]))),
          Positioned(
              top: 271,
              left: 6,
              child: SizedBox(
                  width: 275,
                  height: 173,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 37,
                        left: 0,
                        child: SizedBox(
                            width: 248,
                            height: 136,
                            child: Stack(children: <Widget>[
                              Positioned(top: 0, left: 0, child: null),
                              Positioned(top: 88, left: 0, child: null),
                              Positioned(top: 44, left: 0, child: null),
                            ]))),
                    const Positioned(
                        top: 0,
                        left: 12,
                        child: Text(
                          'Какие у вас симптомы?',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'SF Pro Display',
                              fontSize: 24,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ]))),
          Positioned(
              top: 470,
              left: 6,
              child: SizedBox(
                  width: 248,
                  height: 129,
                  child: Stack(children: [
                    Positioned(
                        top: 37,
                        left: 0,
                        child: SizedBox(
                            width: 248,
                            height: 92,
                            child: Stack(children: [
                              Positioned(top: 0, left: 0, child: null),
                              Positioned(top: 44, left: 0, child: null),
                            ]))),
                    const Positioned(
                        top: 0,
                        left: 12,
                        child: Text(
                          'На что похож запах?',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'SF Pro Display',
                              fontSize: 24,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ]))),
          Positioned(
              top: 110,
              left: 16,
              child: SizedBox(
                  width: 343,
                  height: 52,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 343,
                            height: 52,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                topRight: Radius.circular(6),
                                bottomLeft: Radius.circular(6),
                                bottomRight: Radius.circular(6),
                              ),
                              color: Color.fromRGBO(241, 245, 255, 1),
                            ))),
                    const Positioned(
                        top: 14,
                        left: 15,
                        child: Text(
                          'Ваша локация',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(
                                  145, 162, 207, 0.4000000059604645),
                              fontFamily: '?????',
                              fontSize: 16,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1.5),
                        )),
                  ]))),
        ]));
  }
}
