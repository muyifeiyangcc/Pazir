import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pazir/backend/dvaitairtanui.dart';
import 'package:pazir/backend/softenembod.dart';
import 'package:pazir/page/manipuramine/ahimsahiedit.dart';
import 'package:pazir/page/manipuramine/bhaktiantradiao.dart';
import 'package:pazir/page/manipuramine/sitkarihmariblo.dart';
import 'package:pazir/page/vinyasalogin/microadyscanv.dart';
import 'package:pazir/page/vinyasalogin/palabhatistart.dart';

class TejasKundalSet extends StatefulWidget {
  const TejasKundalSet({super.key});

  @override
  State<TejasKundalSet> createState() => _TejasKundalSet();
}

class _TejasKundalSet extends State<TejasKundalSet> {
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
                              "  Settings",
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
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Flex(
                            direction: Axis.vertical,

                            children: [
                              DecoratedBox(
                                decoration: BoxDecoration(),
                                child: Container(height: 31),
                              ),
                              Wrap(
                                runSpacing: 16,
                                children: [
                                  GestureDetector(
                                    behavior: HitTestBehavior.translucent,
                                    onTap: () {
                                      Get.bottomSheet(
                                        AhimsaHiEdit(),
                                        isScrollControlled: true,
                                      );
                                    },
                                    child: PhysicalModel(
                                      color: Colors.transparent,
                                      elevation: 0,
                                      child: Container(
                                        width: double.infinity,
                                        height: 52,
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(
                                            255,
                                            255,
                                            255,
                                            1,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 20,
                                          ),
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                              -1,
                                              0,
                                            ),
                                            child: Text(
                                              "Edit personal information",
                                              style: TextStyle(
                                                fontFamily: 'NotoSans',
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
                                    ),
                                  ),

                                  GestureDetector(
                                    behavior: HitTestBehavior.translucent,
                                    onTap: () {
                                      Get.to(SitkariHmariBlo());
                                    },
                                    child: PhysicalModel(
                                      color: Colors.transparent,
                                      elevation: 0,
                                      child: Container(
                                        width: double.infinity,
                                        height: 52,
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(
                                            255,
                                            255,
                                            255,
                                            1,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 20,
                                          ),
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                              -1,
                                              0,
                                            ),
                                            child: Text(
                                              "Blacklist",
                                              style: TextStyle(
                                                fontFamily: 'NotoSans',
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
                                    ),
                                  ),
                                  GestureDetector(
                                    behavior: HitTestBehavior.translucent,
                                    onTap: () {
                                      Get.to(
                                        MicroAdyScanv(
                                          shUnYHiran:
                                              'https://app.gy69o8ub.link/privacy',
                                        ),
                                      );
                                    },
                                    child: PhysicalModel(
                                      color: Colors.transparent,
                                      elevation: 0,
                                      child: Container(
                                        width: double.infinity,
                                        height: 52,
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(
                                            255,
                                            255,
                                            255,
                                            1,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 20,
                                          ),
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                              -1,
                                              0,
                                            ),
                                            child: Text(
                                              "Privacy Policy",
                                              style: TextStyle(
                                                fontFamily: 'NotoSans',
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
                                    ),
                                  ),
                                  GestureDetector(
                                    behavior: HitTestBehavior.translucent,
                                    onTap: () {
                                      Get.to(
                                        MicroAdyScanv(
                                          shUnYHiran:
                                              'https://app.gy69o8ub.link/users',
                                        ),
                                      );
                                    },
                                    child: PhysicalModel(
                                      color: Colors.transparent,
                                      elevation: 0,
                                      child: Container(
                                        width: double.infinity,
                                        height: 52,
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(
                                            255,
                                            255,
                                            255,
                                            1,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 20,
                                          ),
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                              -1,
                                              0,
                                            ),
                                            child: Text(
                                              "User Agreement",
                                              style: TextStyle(
                                                fontFamily: 'NotoSans',
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
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                onTap: () {
                                  Get.dialog(BhaktiAntraDiao());
                                },
                                child: PhysicalModel(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  borderRadius: BorderRadius.circular(45),
                                  child: Container(
                                    width: 289,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(45),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color.fromRGBO(254, 231, 139, 1),
                                            Color.fromRGBO(235, 66, 103, 1),
                                          ],
                                          begin: Alignment(-1, 0),
                                          end: Alignment(1, 0),
                                        ),
                                        borderRadius: BorderRadius.circular(45),
                                      ),
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        "Delete Account",
                                        style: TextStyle(
                                          fontFamily: 'NotoSans',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
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
                              ),
                              DecoratedBox(
                                decoration: BoxDecoration(),
                                child: Container(height: 16),
                              ),
                              GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                onTap: () async {
                                  await sereneFluxInvoker();
                                  FFAppState.instance.shamBHavInd =0;

                                  Get.offAll(PalabhAtiStart());
                                },
                                child: PhysicalModel(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  borderRadius: BorderRadius.circular(45),
                                  child: Container(
                                    width: 289,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(45),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color.fromRGBO(254, 231, 139, 1),
                                            Color.fromRGBO(235, 66, 103, 1),
                                          ],
                                          begin: Alignment(-1, 0),
                                          end: Alignment(1, 0),
                                        ),
                                        borderRadius: BorderRadius.circular(45),
                                      ),
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        "Log Out",
                                        style: TextStyle(
                                          fontFamily: 'NotoSans',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
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
                              ),

                              DecoratedBox(
                                decoration: BoxDecoration(),
                                child: Container(height: 80),
                              ),
                            ],
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
      ),
    );
  }
}
