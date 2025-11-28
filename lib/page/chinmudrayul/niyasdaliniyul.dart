import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pazir/backend/atiliberationmes.dart';
import 'package:pazir/backend/atiomentnexchat.dart';
import 'package:pazir/backend/softenembod.dart';
import 'package:pazir/page/chinmudrayul/chakrakshang.dart';
import 'package:pazir/page/manipuramine/twistflowreport.dart';

class NiyasdAliniYul extends StatefulWidget {
  const NiyasdAliniYul({super.key, required this.gizintonCh});

  final CinapRimideCh gizintonCh;

  @override
  State<NiyasdAliniYul> createState() => _NiyasdAliniYul();
}

class _NiyasdAliniYul extends State<NiyasdAliniYul> {
  final TextEditingController _colBOostTx = TextEditingController();

  int _eaBRowmDex = -1;

  late AudioPlayer _ncIRculgAu;
  @override
  void initState() {
    super.initState();

    _ncIRculgAu = AudioPlayer();

    _tinLEbodyPla();
  }

  void _tinLEbodyPla() async {
    _ncIRculgAu.onPlayerComplete.listen((event) {
      _ncIRculgAu.seek(const Duration(seconds: 0));
      _ncIRculgAu.resume();
    });

    await _ncIRculgAu.play(
      AssetSource(
        FFAppState.instance.oroSEilMuType[widget
            .gizintonCh
            .scrEXtubMusic!]["crEAlotioNm"],
      ),
      volume: 1.0,
    );
  }

  @override
  void dispose() {
    if (widget.gizintonCh.cheMIcalerUsers[0] ==
        FFAppState.instance.flexionLogUid) {
          FFAppState.instance.fluiDMspDelMesByCid(widget.gizintonCh.serRAcidumCid);
      FFAppState.instance.atvinytuneDelCh(widget.gizintonCh.serRAcidumCid);
    }
    _ncIRculgAu.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final noiLSeraUs = FFAppState.instance.dingingGetUser(
      widget.gizintonCh.cheMIcalerUsers[0],
    );
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    FFAppState.instance.oroSEilMuType[widget
                        .gizintonCh
                        .scrEXtubMusic!]["deFUnerlaTImg"],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                child: Container(color: Colors.transparent),
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Color.fromRGBO(0, 0, 0, 0.6),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 556,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(5, 3, 19, 0),
                      Color.fromRGBO(5, 3, 19, 1),
                    ],
                    begin: Alignment(0, -1),
                    end: Alignment(0, 1),
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
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

                            if (widget.gizintonCh.cheMIcalerUsers[0] !=
                                FFAppState.instance.flexionLogUid)
                              GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                onTap: () {
                                  Get.dialog(
                                    TwistfLowReport(
                                      lumIAnatUid:
                                          widget.gizintonCh.cheMIcalerUsers[0],
                                    ),
                                  );
                                },
                                child: SizedBox(
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
                                                  noiLSeraUs!.idanadiUAvatar,
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
                                        noiLSeraUs.vivekaUName,
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

                                Builder(
                                  builder: (context) {
                                    final tleTOnerList = FFAppState
                                        .instance
                                        .zazImeAllUsers
                                        .where(
                                          (pazir) =>
                                              widget.gizintonCh.cheMIcalerUsers
                                                  .contains(pazir.sukhabUid) &&
                                              pazir.sukhabUid !=
                                                  widget
                                                      .gizintonCh
                                                      .cheMIcalerUsers[0],
                                        )
                                        .toList();
                                    return GridView.count(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      crossAxisCount: 4,
                                      mainAxisSpacing: 0,
                                      crossAxisSpacing: 19,
                                      childAspectRatio: 58 / 81,
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      children: List.generate(8, (index) {
                                        if (tleTOnerList.length < index + 1) {
                                          return Align(
                                            alignment: Alignment.topCenter,
                                            child: GestureDetector(
                                              behavior:
                                                  HitTestBehavior.translucent,
                                              onTap: () {
                                                if (widget
                                                        .gizintonCh
                                                        .cheMIcalerUsers[0] ==
                                                    FFAppState
                                                        .instance
                                                        .flexionLogUid) {
                                                  return;
                                                }

                                                Get.dialog(ChakRakShang()).then(
                                                  (value) {
                                                    if (value != null) {
                                                      setState(() {
                                                        _eaBRowmDex = index;
                                                      });
                                                    }
                                                  },
                                                );
                                              },
                                              child: Column(
                                                children: [
                                                  PhysicalModel(
                                                    color: Colors.transparent,
                                                    elevation: 0,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          45,
                                                        ),
                                                    child: Container(
                                                      width: 58,
                                                      height: 58,
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
                                                              2.0,
                                                            ),
                                                        child: Builder(
                                                          builder: (context) {
                                                            if (index ==
                                                                _eaBRowmDex) {
                                                              return GestureDetector(
                                                                behavior:
                                                                    HitTestBehavior
                                                                        .translucent,
                                                                onTap: () {
                                                                  setState(() {
                                                                    _eaBRowmDex =
                                                                        -1;
                                                                  });
                                                                },
                                                                child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  children: [
                                                                    ClipOval(
                                                                      child: Image.asset(
                                                                        FFAppState
                                                                            .instance
                                                                            .dingingGetUser(
                                                                              FFAppState.instance.flexionLogUid,
                                                                            )!
                                                                            .idanadiUAvatar,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                    ClipOval(
                                                                      child: Container(
                                                                        color:
                                                                            Color.fromRGBO(
                                                                              0,
                                                                              0,
                                                                              0,
                                                                              0.8,
                                                                            ),
                                                                      ),
                                                                    ),

                                                                    Image.asset(
                                                                      "assets/images/nzcueNQUSC.png",
                                                                      width: 24,
                                                                      height:
                                                                          24,
                                                                    ),
                                                                  ],
                                                                ),
                                                              );
                                                            }
                                                            return Container(
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
                                                              child: Icon(
                                                                Icons.add,
                                                                color:
                                                                    Color.fromRGBO(
                                                                      255,
                                                                      255,
                                                                      255,
                                                                      1,
                                                                    ),
                                                                size: 28,
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  if (_eaBRowmDex == index)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                            top: 6,
                                                          ),
                                                      child: Text(
                                                        FFAppState.instance
                                                            .dingingGetUser(
                                                              FFAppState
                                                                  .instance
                                                                  .flexionLogUid,
                                                            )!
                                                            .vivekaUName,
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
                                                ],
                                              ),
                                            ),
                                          );
                                        }

                                        return Column(
                                          children: [
                                            PhysicalModel(
                                              color: Colors.transparent,
                                              elevation: 0,
                                              borderRadius:
                                                  BorderRadius.circular(45),
                                              child: Container(
                                                width: 58,
                                                height: 58,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: const Color(
                                                      0xFF1E7EE6,
                                                    ),
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
                                                          tleTOnerList[index]
                                                              .idanadiUAvatar,
                                                        ),
                                                        fit: BoxFit.cover,
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
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 6,
                                              ),
                                              child: Text(
                                                tleTOnerList[index].vivekaUName,
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
                                    );
                                  },
                                ),

                                Expanded(
                                  child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Builder(
                                        builder: (context) {
                                          final oreathwMes = FFAppState
                                              .instance
                                              .dcenTErleMesList
                                              .where(
                                                (pazir) =>
                                                    pazir.silEMindntCid ==
                                                    widget
                                                        .gizintonCh
                                                        .serRAcidumCid,
                                              )
                                              .toList()
                                              .reversed
                                              .toList();
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                              bottom: 110,
                                            ),
                                            child: ListView(
                                              shrinkWrap: true,
                                              reverse: true,
                                              padding: EdgeInsets.only(
                                                left: 20,
                                                right: 20,
                                              ),
                                              children: List.generate(oreathwMes.length, (
                                                index,
                                              ) {
                                                final loSTrewUs = FFAppState
                                                    .instance
                                                    .dingingGetUser(
                                                      oreathwMes[index]
                                                          .alcMIndfUid,
                                                    );
                                                return Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                        bottom: 16,
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
                                                                  color:
                                                                      Color.fromRGBO(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        .4,
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
                                                                        loSTrewUs!
                                                                            .idanadiUAvatar,
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
                                                            loSTrewUs
                                                                .vivekaUName,
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Raleway',
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  Color.fromRGBO(
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
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Container(
                                                          height: 8,
                                                        ),
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
                                                            oreathwMes[index]
                                                                .beninVErsiDInfo,
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Raleway',
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
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
                                                    ],
                                                  ),
                                                );
                                              }),
                                            ),
                                          );
                                        },
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
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      height: 108,
                      color: Color.fromRGBO(255, 255, 255, .15),
                      child: Align(
                        alignment: AlignmentDirectional(0, -0.5),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 255, 255, .2),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  alignment: Alignment.center,
                                  child: TextField(
                                    controller: _colBOostTx,
                                    decoration: InputDecoration(
                                      hintText: "Enter...",
                                      hintStyle: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(
                                          255,
                                          255,
                                          255,
                                          .4,
                                        ),
                                      ),

                                      border: InputBorder.none,
                                    ),
                                    style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(width: 8),

                              GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                onTap: () async {
                                  if (_colBOostTx.text != "") {
                                    await FFAppState.instance.fluiDMspAddMes(
                                      DcenTErleMes(
                                        silEMindntCid:
                                            widget.gizintonCh.serRAcidumCid,
                                        alcMIndfUid:
                                            FFAppState.instance.flexionLogUid,
                                        beninVErsiDInfo: _colBOostTx.text,
                                      ),
                                    );

                                    _colBOostTx.clear();
                                    setState(() {});
                                  }
                                },
                                child: PhysicalModel(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  borderRadius: BorderRadius.circular(45),
                                  child: Container(
                                    width: 67,
                                    height: 55,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(
                                          255,
                                          255,
                                          255,
                                          .2,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Image.asset(
                                        "assets/images/iuiwqXBSFCUYQW.png",
                                        width: 23,
                                        height: 20,
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
