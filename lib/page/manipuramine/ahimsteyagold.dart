import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AhimsTeyaGold extends StatefulWidget {
  const AhimsTeyaGold({super.key});

  @override
  State<AhimsTeyaGold> createState() => _AhimsTeyaGold();
}

class _AhimsTeyaGold extends State<AhimsTeyaGold> {
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
        child: Scaffold(
          backgroundColor: Color.fromRGBO(0, 0, 0, 0),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20),
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
                          child: Image.asset("assets/images/cjNVUISAB.png"),
                        ),
                      ),
                    ),
                    Text(
                      "  Wallet",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(5, 3, 19, 1),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Flex(
                      direction: Axis.vertical,
                      children: [
                        Image(
                          image: AssetImage("assets/images/nasuNUYWQS.png"),
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
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Flex(
                          direction: Axis.vertical,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DecoratedBox(
                              decoration: BoxDecoration(),
                              child: Container(height: 61),
                            ),
                            Center(
                              child: SizedBox(
                                width: 210,
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12),
                                      child: Row(
                                        children: [
                                          Image(
                                            image: AssetImage(
                                              "assets/images/iubNCUQW.png",
                                            ),
                                            width: 71,
                                            height: 59,
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            "999090",
                                            style: TextStyle(
                                              fontFamily: 'NotoSans',
                                              fontSize: 36,
                                              fontWeight: FontWeight.w700,
                                              color: Color.fromRGBO(
                                                5,
                                                3,
                                                19,
                                                1,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 65),
                                      child: Image.asset(
                                        "assets/images/cnuzxiNSIUDIQX.png",
                                        width: 16,
                                        height: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            GridView.count(
                              crossAxisCount: 2,
                              mainAxisSpacing: 12,
                              crossAxisSpacing: 19,
                              childAspectRatio: 162 / 98,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              children: [
                                "1",
                                "2",
                                "3",
                              ].map((pazir) => _anaTpas(pazir)).toList(),
                            ),
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
      ),
    );
  }

  Widget _anaTpas(pazir) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(235, 240, 245, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Flex(
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "400",
            style: TextStyle(
              fontFamily: 'NotoSans',
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(5, 3, 19, 1),
            ),
          ),
          PhysicalModel(
            color: Colors.transparent,
            elevation: 0,
            borderRadius: BorderRadius.circular(45),
            child: Container(
              width: 76,
              height: 34,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF1E7EE6)),
                borderRadius: BorderRadius.circular(45),
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
                    borderRadius: BorderRadius.circular(45),
                  ),
                  alignment: AlignmentDirectional(0, 0),
                  child: Text(
                    "\$0.99",
                    style: TextStyle(
                      fontFamily: 'NotoSans',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
