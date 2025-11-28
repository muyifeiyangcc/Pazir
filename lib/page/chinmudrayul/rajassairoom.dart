import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pazir/backend/dvaitairtanui.dart';
import 'package:pazir/backend/softenembod.dart';
import 'package:pazir/page/chinmudrayul/niyasdaliniyul.dart';
import 'package:pazir/page/chinmudrayul/preagnichuang.dart';

class RajasSaiRoom extends StatefulWidget {
  const RajasSaiRoom({super.key});

  @override
  State<RajasSaiRoom> createState() => _RajasSaiRoom();
}

class _RajasSaiRoom extends State<RajasSaiRoom> {
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
                            Text(
                              "Chat Room",
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(5, 3, 19, 1),
                              ),
                            ),

                            GestureDetector(
                              behavior: HitTestBehavior.translucent,
                              onTap: () {
                                Get.to(PreAgniChuang());
                              },
                              child: PhysicalModel(
                                color: Colors.transparent,
                                elevation: 0,
                                borderRadius: BorderRadius.circular(45),
                                child: Container(
                                  width: 124,
                                  height: 42,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0xFF1E7EE6),
                                    ),
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
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.add,
                                            color: Color.fromRGBO(
                                              255,
                                              255,
                                              255,
                                              1,
                                            ),
                                            size: 36,
                                          ),
                                          SizedBox(width: 8),
                                          Text(
                                            "Create",
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
                                        ],
                                      ),
                                    ),
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
                              padding: const EdgeInsets.only(top: 80),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  child: Flex(
                                    direction: Axis.vertical,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Builder(
                                        builder: (context) {
                                          final pETanArlCh = FFAppState
                                              .instance
                                              .zazImeAllChats
                                              .where(
                                                (pazir) =>
                                                    pazir.falOTioncIs == true
                                                    &&!FFAppState
                                                            .instance
                                                            .dingingGetUser(
                                                              FFAppState
                                                                  .instance
                                                                  .flexionLogUid,
                                                            )!.relations.easingUBlock.contains(pazir.cheMIcalerUsers[0])

                                              )
                                              .toList();
                                          return Wrap(
                                            runSpacing: 12,
                                            children: pETanArlCh
                                                .map(
                                                  (pazir) => _apaRigrAha(pazir),
                                                )
                                                .toList(),
                                          );
                                        },
                                      ),
                                      DecoratedBox(
                                        decoration: BoxDecoration(),
                                        child: Container(height: 121),
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
            diviUNityneXia(),
          ],
        ),
      ),
    );
  }

  Widget _apaRigrAha(pazir) {
    final pufOPXaneUs = FFAppState.instance.dingingGetUser(
      pazir.cheMIcalerUsers[0],
    );
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        Get.to(NiyasdAliniYul(gizintonCh: pazir))?.then((_){
          setState(() {
            
          });
        });
      },
      child: Container(
        width: double.infinity,
        height: 266,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Flex(
          direction: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                width: double.infinity,
                height: 196,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(pazir.scROffubCover),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(0, 0, 0, 0),
                              Color.fromRGBO(0, 0, 0, 0.15),
                            ],
                            begin: Alignment(0, -1),
                            end: Alignment(0, 1),
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, bottom: 10),
                      child: Flex(
                        direction: Axis.vertical,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 85,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(51, 46, 46, .3),
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  children: [
                                    Image(
                                      image: AssetImage(
                                        "assets/images/zkxXCNQUWY.png",
                                      ),
                                      width: 16.6,
                                      height: 12.5,
                                    ),
                                    SizedBox(width: 8),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 5),
                                      child: Text(
                                        "${pazir.masBOosterKs}",
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
                                    SizedBox(width: 12),
                                  ],
                                ),
                              ),
                              SizedBox(width: 8),
                              Container(
                                width: 85,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(51, 46, 46, .3),
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  children: [
                                    Image(
                                      image: AssetImage(
                                        "assets/images/nxzuQNIUASR.png",
                                      ),
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(width: 8),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 5),
                                      child: Text(
                                        "${pazir.cheMIcalerUsers.length}",
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
                              ),
                            ],
                          ),
                          Text(
                            pazir.spFOlianfWa,
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(255, 255, 255, .7),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
              child: Row(
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
                              image: AssetImage(pufOPXaneUs!.idanadiUAvatar),
                            ),
                          ),
                          alignment: AlignmentDirectional(0, 0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 11),
                  Text(
                    pufOPXaneUs.vivekaUName,
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(5, 3, 19, 1),
                    ),
                  ),
                  Spacer(),
                  PhysicalModel(
                    color: Colors.transparent,
                    elevation: 0,
                    borderRadius: BorderRadius.circular(45),
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(255, 255, 255, 1),
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
                                  borderRadius: BorderRadius.circular(26),
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.all(11.0),
                                  child: Image(
                                    image: AssetImage(
                                      "assets/images/chiuqwNSIFQR.png",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "  GO",
                              style: TextStyle(
                                fontFamily: 'NotoSans',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(255, 255, 255, 1),
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
    );
  }
}
