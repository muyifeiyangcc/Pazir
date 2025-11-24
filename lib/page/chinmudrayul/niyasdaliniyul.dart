import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NiyasdAliniYul extends StatefulWidget {
  const NiyasdAliniYul({super.key});

  @override
  State<NiyasdAliniYul> createState() => _NiyasdAliniYul();
}

class _NiyasdAliniYul extends State<NiyasdAliniYul> {
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
                                    "assets/images/nxuiNCUIQWB.png",
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
                            Flex(
                              direction: Axis.vertical,
                              children: [
                                Column(
                                  children: [
                                    PhysicalModel(
                                      color: Colors.transparent,
                                      elevation: 0,
                                      borderRadius: BorderRadius.circular(45),
                                      child: Container(
                                        width: 76,
                                        height: 76,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: const Color(0xFF1E7EE6),
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            45,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/zxNCYUIQX.png",
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(45),
                                            ),
                                            alignment: AlignmentDirectional(
                                              0,
                                              0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 6),
                                      child: Text(
                                        "Vincent",
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
                                    ),
                                  ],
                                ),

                                DecoratedBox(
                                  decoration: BoxDecoration(),
                                  child: Container(height: 24),
                                ),

                                GridView.count(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  crossAxisCount: 4,
                                  mainAxisSpacing: 12,
                                  crossAxisSpacing: 19,
                                  childAspectRatio: 58 / 81,
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  children: List.generate(8, (index) {
                                    return Column(
                                      children: [
                                        PhysicalModel(
                                          color: Colors.transparent,
                                          elevation: 0,
                                          borderRadius: BorderRadius.circular(
                                            45,
                                          ),
                                          child: Container(
                                            width: 58,
                                            height: 58,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xFF1E7EE6),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(45),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(
                                                4.0,
                                              ),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      "assets/images/zxNCYUIQX.png",
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(45),
                                                ),
                                                alignment: AlignmentDirectional(
                                                  0,
                                                  0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 6,
                                          ),
                                          child: Text(
                                            "Vincent",
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
                                        ),
                                      ],
                                    );
                                  }),
                                ),

                                Expanded(
                                  child: ListView(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 20,
                                    ),
                                    children: List.generate(3, (index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(
                                          bottom: 16,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                PhysicalModel(
                                                  color: Colors.transparent,
                                                  elevation: 0,
                                                  borderRadius:
                                                      BorderRadius.circular(45),
                                                  child: Container(
                                                    width: 32,
                                                    height: 32,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Color.fromRGBO(
                                                          255,
                                                          255,
                                                          255,
                                                          .4,
                                                        ),
                                                      ),
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                            2.0,
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
                                                                begin:
                                                                    Alignment(
                                                                      -1,
                                                                      0,
                                                                    ),
                                                                end: Alignment(
                                                                  1,
                                                                  0,
                                                                ),
                                                              ),
                                                          shape:
                                                              BoxShape.circle,
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
                                            DecoratedBox(
                                              decoration: BoxDecoration(),
                                              child: Container(height: 8),
                                            ),

                                            Container(
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                  255,
                                                  255,
                                                  255,
                                                  .2,
                                                ),
                                                borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(20),
                                                  bottomLeft: Radius.circular(
                                                    20,
                                                  ),
                                                  bottomRight: Radius.circular(
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
                                                  "Nice to meet you all.",
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
                                  height: 108,
                                  color: Color.fromRGBO(255, 255, 255, .15),
                                  child: Align(
                                    alignment: AlignmentDirectional(0, -0.5),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              height: 55,
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                  255,
                                                  255,
                                                  255,
                                                  .2,
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
                                                  color: Color.fromRGBO(
                                                    255,
                                                    255,
                                                    255,
                                                    .2,
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
          ],
        ),
      ),
    );
  }
}
