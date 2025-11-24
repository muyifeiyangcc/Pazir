import 'dart:math' as math;

import 'package:flutter/material.dart';

class PranaAjnaShou extends StatefulWidget {
  const PranaAjnaShou({super.key});

  @override
  State<PranaAjnaShou> createState() => _PranaAjnaShou();
}

class _PranaAjnaShou extends State<PranaAjnaShou> {
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
              body: SingleChildScrollView(
                 physics: const ClampingScrollPhysics(),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Transform.translate(
                          offset: Offset(-40, 0),
                          child: Transform.scale(
                            scaleX: 2,
                            scaleY: 2,
                            child: Image.asset(
                              "assets/images/zjiucwAMSDIUB.png",
                              width: 233,
                              height: 404,
                            ),
                          ),
                        ),
                        Transform.rotate(
                          angle: 10 * (math.pi / 180),
                          child: Transform.translate(
                            offset: Offset(-20, 0),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 52),
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

                        Padding(
                          padding: const EdgeInsets.only(top: 43),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                              width: 179,
                              height: 278,
                              child: Stack(
                                children: [
                                  Transform.translate(
                                    offset: Offset(-16, 0),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 100),
                                      child: Image.asset(
                                        "assets/images/zxncANBSUH.png",
                                        width: 72,
                                        height: 123,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 179,
                                    height: 278,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "assets/images/zxNCYUIQX.png",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 14,
                                      right: 18,
                                    ),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Image.asset(
                                        "assets/images/zxuicwNXUX.png",
                                        width: 24,
                                        height: 24,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 186,
                                      right: 10,
                                    ),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: ClipOval(
                                        child: Container(
                                          width: 20,
                                          height: 20,
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
                                ],
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DecoratedBox(
                                decoration: BoxDecoration(),
                                child: Container(height: 99),
                              ),
                              Text(
                                "HOW ARE YOU \nFEELING \nTODAY? ",
                                style: TextStyle(
                                  fontFamily: 'NotoSans',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                              Container(height: 12),
                              Text(
                                "Tell me and I'll recommend \nthe most suitable yoga \nposes for you.",
                                style: TextStyle(
                                  fontFamily: 'Raleway',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                              Container(height: 16),
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: PhysicalModel(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  borderRadius: BorderRadius.circular(45),
                                  child: Container(
                                    width: 175,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color.fromRGBO(
                                          255,
                                          255,
                                          255,
                                          1,
                                        ),
                                      ),
                                      borderRadius: BorderRadius.circular(45),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color.fromRGBO(30, 126, 230, 1),
                                            Color.fromRGBO(184, 218, 255, 1),
                                          ],
                                          begin: Alignment(-1, 0),
                                          end: Alignment(1, 0),
                                        ),
                                        borderRadius: BorderRadius.circular(45),
                                      ),

                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child: Container(
                                              width: 48,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(26),
                                                color: Color.fromRGBO(
                                                  255,
                                                  255,
                                                  255,
                                                  1,
                                                ),
                                              ),
                                              alignment: Alignment.center,
                                              child: Padding(
                                                padding: const EdgeInsets.all(
                                                  7.0,
                                                ),
                                                child: Image(
                                                  image: AssetImage(
                                                    "assets/images/zxciuSNUIS.png",
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "  UNLOCK WITH",
                                            style: TextStyle(
                                              fontFamily: 'NotoSans',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
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
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 330),
                          child: Stack(
                            children: [
                              Image(
                                image: AssetImage(
                                  "assets/images/nasuNUYWQS.png",
                                ),
                                width: double.infinity,
                                height: 105,
                                fit: BoxFit.fill,
                              ),
                              Flex(
                                direction: Axis.vertical,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  DecoratedBox(
                                    decoration: BoxDecoration(),
                                    child: Container(height: 50),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Recommended",
                                          style: TextStyle(
                                            fontFamily: 'Raleway',
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(5, 3, 19, 1),
                                          ),
                                        ),
                                        SizedBox(width: 28),

                                        Text(
                                          "Follow",
                                          style: TextStyle(
                                            fontFamily: 'Raleway',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(5, 3, 19, .4),
                                          ),
                                        ),

                                        Spacer(),
                                        PhysicalModel(
                                          color: Colors.transparent,
                                          elevation: 0,
                                          borderRadius: BorderRadius.circular(
                                            45,
                                          ),
                                          child: Container(
                                            width: 73,
                                            height: 42,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xFF1E7EE6),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(45),
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
                                                  borderRadius:
                                                      BorderRadius.circular(45),
                                                ),
                                                alignment: AlignmentDirectional(
                                                  0,
                                                  0,
                                                ),
                                                child: Icon(
                                                  Icons.add,
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
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 13),
                                    child: Container(
                                      color: Color.fromRGBO(255, 255, 255, .8),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 20,
                                        ),
                                        child: Flex(
                                          direction: Axis.vertical,
                                          children: [
                                            DecoratedBox(
                                              decoration: BoxDecoration(),
                                              child: Container(height: 20),
                                            ),
                                            Wrap(
                                              runSpacing: 12,
                                              children: ["1", "1", "1"]
                                                  .map(
                                                    (pazir) => _jayiHAsr(pazir),
                                                  )
                                                  .toList(),
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
    );
  }

  Widget _jayiHAsr(pazir) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    PhysicalModel(
                      color: Colors.transparent,
                      elevation: 0,
                      borderRadius: BorderRadius.circular(45),
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFF1E7EE6)),
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(30, 126, 230, 1),
                                  Color.fromRGBO(184, 218, 255, 1),
                                ],
                                begin: Alignment(-1, 0),
                                end: Alignment(1, 0),
                              ),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("assets/images/Pazir.png"),
                              ),
                            ),
                            alignment: AlignmentDirectional(0, 0),
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
                        color: Color.fromRGBO(5, 3, 19, 1),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 40,
                      height: 24,
                      decoration: BoxDecoration(),
                      child: Image.asset("assets/images/zuiNAYUSDS.png"),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 12),
                  child: Text(
                    "In the anime, he is the embodiment of bravery and justice, a hero in the hearts of countless...",
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(5, 3, 19, .4),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 156,
                      height: 156,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/Pazir.png"),
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      alignment: Alignment.center,
                      child: Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, .4),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 156,
                        decoration: BoxDecoration(),
                        alignment: Alignment.center,
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
                  borderRadius: BorderRadiusGeometry.only(
                    bottomLeft: Radius.circular(20),
                  ),
                  child: Container(
                    height: 64,
                    color: Color.fromRGBO(235, 240, 245, 1),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                            fontFamily: 'Raleway',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(5, 3, 19, .4),
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
                  borderRadius: BorderRadiusGeometry.only(
                    bottomRight: Radius.circular(20),
                  ),
                  child: Container(
                    height: 64,
                    color: Color.fromRGBO(235, 240, 245, 1),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                            fontFamily: 'Raleway',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(5, 3, 19, .4),
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
  }
}
