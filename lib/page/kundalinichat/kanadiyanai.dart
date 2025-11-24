import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KanaDiyanAi extends StatefulWidget {
  const KanaDiyanAi({super.key});

  @override
  State<KanaDiyanAi> createState() => _KanaDiyanAi();
}

class _KanaDiyanAi extends State<KanaDiyanAi> {
  final TextEditingController _betundrargm = TextEditingController();
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
                                  child: Image.asset(
                                    "assets/images/cjNVUISAB.png",
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "  AI",
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
                      DecoratedBox(
                        decoration: BoxDecoration(),
                        child: Container(height: 118),
                      ),
                      Expanded(
                        child: Stack(
                          children: [
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
                                    child: Container(height: 21),
                                  ),
                                  Expanded(
                                    child: ListView(
                                      children: List.generate(2, (index) {
                                        return Padding(
                                          padding: const EdgeInsets.only(
                                            left: 37,
                                            bottom: 24,
                                          ),
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  bottomLeft: Radius.circular(
                                                    20,
                                                  ),
                                                  bottomRight: Radius.circular(
                                                    20,
                                                  ),
                                                ),
                                                color: Color.fromRGBO(
                                                  235,
                                                  240,
                                                  245,
                                                  1,
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                      vertical: 12,
                                                      horizontal: 16,
                                                    ),
                                                child: Text(
                                                  "I'm a beginner in yoga. Which pose should I start practicing with?",
                                                  style: TextStyle(
                                                    fontFamily: 'Raleway',
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
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
                                          ),
                                        );
                                      }),
                                    ),
                                  ),

                                  Container(
                                    width: double.infinity,
                                    height: 108,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    child: Align(
                                      alignment: AlignmentDirectional(0, -0.5),
                                      child: Row(
                                        children: [
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
                                                    BorderRadius.circular(16),
                                              ),
                                              padding: EdgeInsets.symmetric(
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
                                                    fontWeight: FontWeight.w400,
                                                    color: Color.fromRGBO(
                                                      5,
                                                      3,
                                                      19,
                                                      .4,
                                                    ),
                                                  ),
                                      
                                                  border: InputBorder.none,
                                                ),
                                                style: TextStyle(
                                                  fontFamily: 'Raleway',
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
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
                                            borderRadius: BorderRadius.circular(
                                              45,
                                            ),
                                            child: Container(
                                              width: 67,
                                              height: 55,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
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
                                                      BorderRadius.circular(20),
                                                ),
                                                alignment: AlignmentDirectional(
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

                  Padding(
                    padding: const EdgeInsets.only(top: 43),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: SizedBox(
                        width: 130,
                        height: 205,
                        child: Stack(
                          children: [
                            Transform.translate(
                              offset: Offset(-22, -46),
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
                              width: 150,
                              height: 205,
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
                              padding: const EdgeInsets.only(top: 14, right: 0),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Image.asset(
                                  "assets/images/zxuicwNXUX.png",
                                  width: 18.43,
                                  height: 18.43,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 176,
                                right: 5,
                              ),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: ClipOval(
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    color: Color.fromRGBO(255, 255, 255, 1),
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
                    padding: const EdgeInsets.only(top: 120, left: 20),
                    child: Text(
                      "How's your yoga practice \ngoing? I'll match you with \nsuitable yoga poses.",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(5, 3, 19, 1),
                      ),
                    ),
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
