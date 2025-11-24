import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GrounnImiLia extends StatefulWidget {
  const GrounnImiLia({super.key});

  @override
  State<GrounnImiLia> createState() => _GrounnImiLia();
}

class _GrounnImiLia extends State<GrounnImiLia> {
  final TextEditingController _betundrargm = TextEditingController();
  bool _asTeyATya = false;
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
                            Text(
                              "  @Ada",
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(5, 3, 19, 1),
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(),
                              child: Image.asset(
                                "assets/images/zuiNAYUSDS.png",
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
                                DecoratedBox(
                                  decoration: BoxDecoration(),
                                  child: Container(height: 10),
                                ),
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
                              padding: const EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              child: Flex(
                                direction: Axis.vertical,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  DecoratedBox(
                                    decoration: BoxDecoration(),
                                    child: Container(height: 81),
                                  ),
                                  Expanded(
                                    child: ListView(
                                      padding: EdgeInsets.all(0),
                                      children: List.generate(2, (index) {
                                        return Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                            0,
                                            0,
                                            37,
                                            20,
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                children: [
                                                  PhysicalModel(
                                                    color: Colors.transparent,
                                                    elevation: 0,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          45,
                                                        ),
                                                    child: Container(
                                                      width: 49,
                                                      height: 49,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                          color: const Color(
                                                            0xFF1E7EE6,
                                                          ),
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              45,
                                                            ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.all(
                                                              1.5,
                                                            ),
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                              image: AssetImage(
                                                                "assets/images/Pazir.png",
                                                              ),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  45,
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
                                                  DecoratedBox(
                                                    decoration: BoxDecoration(),
                                                    child: Container(height: 4),
                                                  ),
                                                  Text(
                                                    "12:00",
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
                                              SizedBox(width: 12),
                                              Flexible(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                      30,
                                                      126,
                                                      230,
                                                      1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                20,
                                                              ),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                20,
                                                              ),
                                                          bottomRight:
                                                              Radius.circular(
                                                                20,
                                                              ),
                                                        ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                          horizontal: 16,
                                                          vertical: 12,
                                                        ),
                                                    child: Text(
                                                      "Hello! Nice to meet you. The scenery in your video is particularly beautiful.",
                                                      style: TextStyle(
                                                        fontFamily: 'Raleway',
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Color.fromRGBO(
                                                          255,
                                                          255,
                                                          255,
                                                          1,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      }),
                                    ),
                                  ),

                                  Container(
                                    width: double.infinity,

                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    child: Align(
                                      alignment: AlignmentDirectional(0, -0.5),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          top: 12,
                                          bottom: 30,
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                GestureDetector(
                                                  behavior: HitTestBehavior
                                                      .translucent,
                                                  onTap: () {
                                                    _asTeyATya = !_asTeyATya;
                                                  },
                                                  child: Container(
                                                    width: 40,
                                                    height: 40,
                                                    decoration: BoxDecoration(),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                            8.0,
                                                          ),
                                                      child: Image(
                                                        image: AssetImage(
                                                          "assets/images/xzkciuNXZUQY.png",
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 8),
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 55,
                                                    decoration: BoxDecoration(
                                                      color: Color.fromRGBO(
                                                        235,
                                                        240,
                                                        245,
                                                        1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            16,
                                                          ),
                                                    ),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                          horizontal: 16,
                                                        ),
                                                    alignment: Alignment.center,
                                                    child: TextField(
                                                      controller: _betundrargm,
                                                      decoration: InputDecoration(
                                                        hintText: "Enter...",
                                                        hintStyle: TextStyle(
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

                                                        border:
                                                            InputBorder.none,
                                                      ),
                                                      style: TextStyle(
                                                        fontFamily: 'Raleway',
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Color.fromRGBO(
                                                          5,
                                                          3,
                                                          19,
                                                          1,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),

                                                SizedBox(width: 8),

                                                PhysicalModel(
                                                  color: Colors.transparent,
                                                  elevation: 0,
                                                  borderRadius:
                                                      BorderRadius.circular(45),
                                                  child: Container(
                                                    width: 67,
                                                    height: 55,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            20,
                                                          ),
                                                    ),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        gradient:
                                                            LinearGradient(
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
                                                              begin: Alignment(
                                                                -1,
                                                                0,
                                                              ),
                                                              end: Alignment(
                                                                1,
                                                                0,
                                                              ),
                                                            ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              20,
                                                            ),
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional(
                                                            0,
                                                            0,
                                                          ),
                                                      child: Image.asset(
                                                        "assets/images/iuiwqXBSFCUYQW.png",
                                                        width: 23,
                                                        height: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 20,
                                              ),
                                              child: PhysicalModel(
                                                color: Colors.transparent,
                                                elevation: 0,
                                                borderRadius:
                                                    BorderRadius.circular(45),
                                                child: Container(
                                                  width: 82,
                                                  height: 82,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        Color.fromRGBO(
                                                          30,
                                                          126,
                                                          230,
                                                          0.2,
                                                        ),
                                                        Color.fromRGBO(
                                                          184,
                                                          218,
                                                          255,
                                                          0.2,
                                                        ),
                                                      ],
                                                      begin: Alignment(-1, 0),
                                                      end: Alignment(1, 0),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          45,
                                                        ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                          4.0,
                                                        ),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        gradient:
                                                            LinearGradient(
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
                                                              begin: Alignment(
                                                                -1,
                                                                0,
                                                              ),
                                                              end: Alignment(
                                                                1,
                                                                0,
                                                              ),
                                                            ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              45,
                                                            ),
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional(
                                                            0,
                                                            0,
                                                          ),
                                                      child: Image.asset(
                                                        "assets/images/cuiqNCQWY.png",
                                                        width: 24,
                                                        height: 24,
                                                      ),
                                                    ),
                                                  ),
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
