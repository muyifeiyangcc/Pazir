import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OpeniSofteNvdo extends StatefulWidget {
  const OpeniSofteNvdo({super.key});

  @override
  State<OpeniSofteNvdo> createState() => _OpeniSofteNvdo();
}

class _OpeniSofteNvdo extends State<OpeniSofteNvdo> {
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
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(140, 198, 255, 1),
              Color.fromRGBO(230, 236, 242, 1),
            ],
            begin: Alignment(0, -1),
            end: Alignment(0, 1),
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

                            SizedBox(
                              width: 40,
                              height: 40,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image(
                                  image: AssetImage(
                                    "assets/images/ajihcNXCUIS.png",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, -0.15),
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, .4),
                                  shape: BoxShape.circle,
                                ),
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  size: 40,
                                ),
                              ),
                            ),

                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      children: [
                                        PhysicalModel(
                                          color: Colors.transparent,
                                          elevation: 0,
                                          borderRadius: BorderRadius.circular(
                                            45,
                                          ),
                                          child: Container(
                                            width: 32,
                                            height: 32,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xFF1E7EE6),
                                              ),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(
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
                                                    begin: Alignment(-1, 0),
                                                    end: Alignment(1, 0),
                                                  ),
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      "assets/images/Pazir.png",
                                                    ),
                                                  ),
                                                ),
                                                alignment: AlignmentDirectional(
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
                                            fontFamily: 'Raleway',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromRGBO(
                                              255,
                                              255,
                                              255,
                                              1,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 8,
                                        bottom: 12,
                                      ),
                                      child: Text(
                                        "In the anime, he is the embodiment of bravery and justice, a hero in the hearts of countless...",
                                        style: TextStyle(
                                          fontFamily: 'Raleway',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(
                                            255,
                                            255,
                                            255,
                                            .6,
                                          ),
                                        ),
                                      ),
                                    ),

                                    Row(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                            "assets/images/iuwSNCUBQ1.png",
                                          ),
                                          width: 60,
                                          height: 60,
                                        ),
                                        SizedBox(width: 12),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadiusGeometry.circular(
                                                        24,
                                                      ),
                                                  child: Container(
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
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Image.asset(
                                                          "assets/images/xnzNIUSP.png",
                                                          width: 28,
                                                          height: 28,
                                                        ),
                                                        SizedBox(width: 5),
                                                        Text(
                                                          "99",
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
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 8),
                                              Expanded(
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadiusGeometry.circular(
                                                        24,
                                                      ),
                                                  child: Container(
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
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Image.asset(
                                                          "assets/images/xzncuiqANSUDQA.png",
                                                          width: 28,
                                                          height: 28,
                                                        ),
                                                        SizedBox(width: 5),
                                                        Text(
                                                          "99",
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
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(),
                        child: Container(height: 30),
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
