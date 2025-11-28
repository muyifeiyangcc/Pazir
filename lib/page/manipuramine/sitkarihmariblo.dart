import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pazir/backend/softenembod.dart';

class SitkariHmariBlo extends StatefulWidget {
  const SitkariHmariBlo({super.key});

  @override
  State<SitkariHmariBlo> createState() => _SitkariHmariBlo();
}

class _SitkariHmariBlo extends State<SitkariHmariBlo> {
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
                              "  Blacklist",
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
                            Padding(
                              padding: const EdgeInsets.only(top: 22),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  child: Builder(
                                    builder: (context) {
                                      final rncrEDekUsers = FFAppState
                                          .instance
                                          .zazImeAllUsers
                                          .where(
                                            (pazir) => FFAppState.instance
                                                .dingingGetUser(
                                                  FFAppState
                                                      .instance
                                                      .flexionLogUid,
                                                )!
                                                .relations
                                                .easingUBlock
                                                .contains(pazir.sukhabUid),
                                          )
                                          .toList();
                                      return Flex(
                                        direction: Axis.vertical,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: List.generate(rncrEDekUsers.length, (
                                          index,
                                        ) {
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                              bottom: 16,
                                            ),
                                            child: PhysicalModel(
                                              color: Colors.transparent,
                                              elevation: 0,
                                              child: Container(
                                                width: double.infinity,
                                                height: 92,
                                                decoration: BoxDecoration(
                                                  color: Color.fromRGBO(
                                                    255,
                                                    255,
                                                    255,
                                                    1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(24),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.symmetric(
                                                        horizontal: 16,
                                                      ),
                                                  child: Row(
                                                    children: [
                                                      PhysicalModel(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 0,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              45,
                                                            ),
                                                        child: Container(
                                                          width: 60,
                                                          height: 60,
                                                          decoration: BoxDecoration(
                                                            border: Border.all(
                                                              color:
                                                                  const Color(
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
                                                                  4.0,
                                                                ),
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                image: DecorationImage(
                                                                  image: AssetImage(
                                                                    rncrEDekUsers[index]
                                                                        .idanadiUAvatar,
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
                                                      Text(
                                                        "   ${rncrEDekUsers[index].vivekaUName}",
                                                        style: TextStyle(
                                                          fontFamily: 'Raleway',
                                                          fontSize: 20,
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
                                                      Spacer(),

                                                      GestureDetector(
                                                        behavior:
                                                            HitTestBehavior
                                                                .translucent,
                                                        onTap: () async {
                                                          await FFAppState
                                                              .instance
                                                              .unliGHtiTyRemBlo(
                                                                rncrEDekUsers[index]
                                                                    .sukhabUid,
                                                              );

                                                              setState(() {
                                                                
                                                              });
                                                        },
                                                        child: PhysicalModel(
                                                          color: Colors
                                                              .transparent,
                                                          elevation: 0,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                45,
                                                              ),
                                                          child: Container(
                                                            width: 70,
                                                            height: 49,
                                                            decoration: BoxDecoration(
                                                              border: Border.all(
                                                                color:
                                                                    const Color(
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
                                                                    4.0,
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
                                                                child: Container(
                                                                  width: 14,
                                                                  height: 4,
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
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        }),
                                      );
                                    },
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
