import 'package:flutter/material.dart';

class Reportpage2Widget extends StatelessWidget {
  const Reportpage2Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 375,
        height: 812,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 51,
              left: 16,
              child: SizedBox(
                  width: 236,
                  height: 43,
                  child: Stack(children: <Widget>[
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
                                                // ignore: unnecessary_const
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
                    const Positioned(
                        top: 7,
                        left: 53,
                        child: Text(
                          'Жалоба в ЕДДС',
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
          const Positioned(
            top: 110,
            left: 16,
            child: Text(
              'Позвоните пожалуйста в ЕДДС и сообщите им что чувствуете химический запах и просите установить причину. Звонок анонимный.',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(51, 51, 51, 0.4099999964237213),
                  fontFamily: 'SF Pro Display',
                  fontSize: 16,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1.1875),
            ),
          ),
          Positioned(
              top: 294,
              left: 16,
              child: SizedBox(
                  width: 343,
                  height: 52,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
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
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(8),
                                          bottomLeft: Radius.circular(8),
                                          bottomRight: Radius.circular(8),
                                        ),
                                        color: Color.fromRGBO(241, 245, 255, 1),
                                      ))),
                              const Positioned(
                                  top: 14,
                                  left: 16,
                                  child: Text(
                                    'Номер ЕДДС Заявки',
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
                  ]))),
          Positioned(top: 362, left: 0, child: Text("")),
          Positioned(
              top: 202,
              left: 16,
              child: SizedBox(
                  width: 275,
                  height: 36,
                  child: Stack(children: const <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          '8 (3474) 222-22-22',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'SF Pro Display',
                              fontSize: 30,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ]))),
          Positioned(
              top: 685,
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
        ]));
  }
}
