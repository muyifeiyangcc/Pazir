import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SitaliaGnisaraZhu extends StatefulWidget {
  const SitaliaGnisaraZhu({super.key});

  @override
  State<SitaliaGnisaraZhu> createState() => _SitaliaGnisaraZhu();
}

class _SitaliaGnisaraZhu extends State<SitaliaGnisaraZhu> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/ziuxNCIUQB.png"),
          ),
        ),
        child: Stack(
          children: [
            Scaffold(
              backgroundColor: Color.fromRGBO(0, 0, 0, 0),
              body: Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 50,
                          left: 20,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              behavior: HitTestBehavior.translucent,
                              onTap: () {
                                Get.back();
                              },
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Image.asset(
                                    "assets/images/cjNVUISAB.png",
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              behavior: HitTestBehavior.translucent,
                              onTap: () {
                                Get.back();
                              },
                              child: Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(),
                                child: Image.asset(
                                  "assets/images/zuiNAYUSDS.png",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        child: Stack(
                          children: [
                            Opacity(
                              opacity: 0.5,
                              child: Transform.rotate(
                                angle: 10 * (math.pi / 180),
                                child: Transform.translate(
                                  offset: Offset(40, -46),
                                  child: Transform.scale(
                                    scaleX: 1.2,
                                    scaleY: 1.2,
                                    child: Image.asset(
                                      "assets/images/znuABYUNCA.png",
                                      width: 349.39,
                                      height: 249,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Flex(
                              direction: Axis.vertical,
                              children: [
                                Image(
                                  image: AssetImage(
                                    "assets/images/nasuNUYWQS.png",
                                  ),
                                  width: double.infinity,
                                  height: 105,
                                  fit: BoxFit.fill,
                                ),
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    color: Color.fromRGBO(255, 255, 255, 0.8),
                                  ),
                                ),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 110),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  child: Flex(
                                    direction: Axis.vertical,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          bottom: 16,
                                        ),
                                        child: Text(
                                          "Ada",
                                          style: TextStyle(
                                            fontFamily: 'NotoSans',
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromRGBO(5, 3, 19, 1),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flex(
                                            direction: Axis.vertical,
                                            children: [
                                              Text(
                                                "99",
                                                style: TextStyle(
                                                  fontFamily: 'NotoSans',
                                                  fontSize: 28,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color.fromRGBO(
                                                    5,
                                                    3,
                                                    19,
                                                    1,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                "Works",
                                                style: TextStyle(
                                                  fontFamily: 'NotoSans',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color.fromRGBO(
                                                    136,
                                                    147,
                                                    162,
                                                    1,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Flex(
                                            direction: Axis.vertical,
                                            children: [
                                              Text(
                                                "99",
                                                style: TextStyle(
                                                  fontFamily: 'NotoSans',
                                                  fontSize: 28,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color.fromRGBO(
                                                    5,
                                                    3,
                                                    19,
                                                    1,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                "Followings",
                                                style: TextStyle(
                                                  fontFamily: 'NotoSans',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color.fromRGBO(
                                                    136,
                                                    147,
                                                    162,
                                                    1,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Flex(
                                            direction: Axis.vertical,
                                            children: [
                                              Text(
                                                "99",
                                                style: TextStyle(
                                                  fontFamily: 'NotoSans',
                                                  fontSize: 28,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color.fromRGBO(
                                                    5,
                                                    3,
                                                    19,
                                                    1,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                "Followers",
                                                style: TextStyle(
                                                  fontFamily: 'NotoSans',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color.fromRGBO(
                                                    136,
                                                    147,
                                                    162,
                                                    1,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      DecoratedBox(
                                        decoration: BoxDecoration(),
                                        child: Container(height: 28),
                                      ),

                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadiusGeometry.circular(
                                                  24,
                                                ),
                                            child: Container(
                                              width: 151,
                                              height: 64,
                                              color: Color.fromRGBO(
                                                235,
                                                240,
                                                245,
                                                1,
                                              ),
                                              alignment: Alignment.center,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.add,
                                                    size: 30,
                                                    color: Color.fromRGBO(
                                                      136,
                                                      147,
                                                      162,
                                                      1,
                                                    ),
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    "Follow",
                                                    style: TextStyle(
                                                      fontFamily: 'Raleway',
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color.fromRGBO(
                                                        5,
                                                        3,
                                                        19,
                                                        .4,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 17),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadiusGeometry.circular(
                                                  24,
                                                ),
                                            child: Container(
                                              width: 151,
                                              height: 64,
                                              color: Color.fromRGBO(
                                                235,
                                                240,
                                                245,
                                                1,
                                              ),
                                              alignment: Alignment.center,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    "assets/images/xnzNIUSP.png",
                                                    width: 28,
                                                    height: 28,
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    "Chat",
                                                    style: TextStyle(
                                                      fontFamily: 'Raleway',
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color.fromRGBO(
                                                        5,
                                                        3,
                                                        19,
                                                        .4,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                      DecoratedBox(
                                        decoration: BoxDecoration(),
                                        child: Container(height: 22),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Works",
                                          style: TextStyle(
                                            fontFamily: 'Raleway',
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(5, 3, 19, 1),
                                          ),
                                        ),
                                      ),
                                      DecoratedBox(
                                        decoration: BoxDecoration(),
                                        child: Container(height: 20),
                                      ),

                                      Wrap(
                                        runSpacing: 16,
                                        children: List.generate(2, (index) {
                                          return Container(
                                            decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                255,
                                                255,
                                                255,
                                                1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                    12,
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          PhysicalModel(
                                                            color: Colors
                                                                .transparent,
                                                            elevation: 0,
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  45,
                                                                ),
                                                            child: Container(
                                                              width: 32,
                                                              height: 32,
                                                              decoration: BoxDecoration(
                                                                border: Border.all(
                                                                  color: const Color(
                                                                    0xFF1E7EE6,
                                                                  ),
                                                                ),
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets.all(
                                                                      2.0,
                                                                    ),
                                                                child: Container(
                                                                  decoration: BoxDecoration(
                                                                    gradient: LinearGradient(
                                                                      colors: [
                                                                        Color.fromRGBO(
                                                                          30,
                                                                          126,
                                                                          230,
                                                                          1,
                                                                        ),
                                                                        Color.fromRGBO(
                                                                          184,
                                                                          218,
                                                                          255,
                                                                          1,
                                                                        ),
                                                                      ],
                                                                      begin:
                                                                          Alignment(
                                                                            -1,
                                                                            0,
                                                                          ),
                                                                      end:
                                                                          Alignment(
                                                                            1,
                                                                            0,
                                                                          ),
                                                                    ),
                                                                    shape: BoxShape
                                                                        .circle,
                                                                    image: DecorationImage(
                                                                      image: AssetImage(
                                                                        "assets/images/Pazir.png",
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                        0,
                                                                        0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(width: 11),
                                                          Text(
                                                            "Apisai Sloan",
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Raleway',
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  Color.fromRGBO(
                                                                    5,
                                                                    3,
                                                                    19,
                                                                    1,
                                                                  ),
                                                            ),
                                                          ),
                                                          Spacer(),
                                                          Container(
                                                            width: 40,
                                                            height: 24,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Image.asset(
                                                              "assets/images/zuiNAYUSDS.png",
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets.only(
                                                              top: 8,
                                                              bottom: 12,
                                                            ),
                                                        child: Text(
                                                          "In the anime, he is the embodiment of bravery and justice, a hero in the hearts of countless...",
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Raleway',
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Color.fromRGBO(
                                                                  5,
                                                                  3,
                                                                  19,
                                                                  .4,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Container(
                                                            width: 156,
                                                            height: 156,
                                                            decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                image: AssetImage(
                                                                  "assets/images/Pazir.png",
                                                                ),
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                    16,
                                                                  ),
                                                            ),
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                              width: 24,
                                                              height: 24,
                                                              decoration:
                                                                  BoxDecoration(
                                                                    color:
                                                                        Color.fromRGBO(
                                                                          255,
                                                                          255,
                                                                          255,
                                                                          .4,
                                                                        ),
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                              child: Icon(
                                                                Icons
                                                                    .play_arrow,
                                                                color:
                                                                    Color.fromRGBO(
                                                                      255,
                                                                      255,
                                                                      255,
                                                                      1,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 156,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Image.asset(
                                                                "assets/images/iuwSNCUBQ1.png",
                                                                width: 100,
                                                                height: 100,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadiusGeometry.only(
                                                              bottomLeft:
                                                                  Radius.circular(
                                                                    20,
                                                                  ),
                                                            ),
                                                        child: Container(
                                                          height: 64,
                                                          color: Color.fromRGBO(
                                                            235,
                                                            240,
                                                            245,
                                                            1,
                                                          ),
                                                          alignment:
                                                              Alignment.center,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Image.asset(
                                                                "assets/images/xnzNIUSP.png",
                                                                width: 28,
                                                                height: 28,
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text(
                                                                "99",
                                                                style: TextStyle(
                                                                  fontFamily:
                                                                      'Raleway',
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color:
                                                                      Color.fromRGBO(
                                                                        5,
                                                                        3,
                                                                        19,
                                                                        .4,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(width: 1),
                                                    Expanded(
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadiusGeometry.only(
                                                              bottomRight:
                                                                  Radius.circular(
                                                                    20,
                                                                  ),
                                                            ),
                                                        child: Container(
                                                          height: 64,
                                                          color: Color.fromRGBO(
                                                            235,
                                                            240,
                                                            245,
                                                            1,
                                                          ),
                                                          alignment:
                                                              Alignment.center,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Image.asset(
                                                                "assets/images/xzncuiqANSUDQA.png",
                                                                width: 28,
                                                                height: 28,
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text(
                                                                "99",
                                                                style: TextStyle(
                                                                  fontFamily:
                                                                      'Raleway',
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color:
                                                                      Color.fromRGBO(
                                                                        5,
                                                                        3,
                                                                        19,
                                                                        .4,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: PhysicalModel(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  borderRadius: BorderRadius.circular(45),
                                  child: Container(
                                    width: 88,
                                    height: 88,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color(0xFF1E7EE6),
                                      ),
                                      borderRadius: BorderRadius.circular(45),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              "assets/images/Pazir.png",
                                            ),
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            45,
                                          ),
                                        ),
                                        alignment: AlignmentDirectional(0, 0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
