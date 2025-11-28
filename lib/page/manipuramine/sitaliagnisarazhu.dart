import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pazir/backend/atiomentnexchat.dart';
import 'package:pazir/backend/dvaitairtanui.dart';
import 'package:pazir/backend/softenembod.dart';
import 'package:pazir/page/kundalinichat/grounnimilia.dart';
import 'package:pazir/page/manipuramine/ahimsteyagold.dart';
import 'package:pazir/page/manipuramine/tejaskundalset.dart';
import 'package:pazir/page/manipuramine/twistflowreport.dart';
import 'package:pazir/page/samadhihome/openisoftenvdo.dart';

class SitaliaGnisaraZhu extends StatefulWidget {
  const SitaliaGnisaraZhu({
    super.key,
    required this.pranAGurUid,
    required this.sthIRaType,
  });
  final int pranAGurUid;
  final double sthIRaType;

  @override
  State<SitaliaGnisaraZhu> createState() => _SitaliaGnisaraZhu();
}

class _SitaliaGnisaraZhu extends State<SitaliaGnisaraZhu> {
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
    final karUnaUs = FFAppState.instance.dingingGetUser(widget.pranAGurUid);

    final drAIyengaAr = FFAppState.instance.zazImeAllArticles
        .where((pazir) => pazir.prakashakAUid == widget.pranAGurUid)
        .toList();

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
                          left: 16,
                          right: 16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Visibility(
                              visible: widget.sthIRaType == 2.0,
                              child: GestureDetector(
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
                            ),

                            Builder(
                              builder: (context) {
                                if (widget.sthIRaType == 1.0) {
                                  return GestureDetector(
                                    behavior: HitTestBehavior.translucent,
                                    onTap: () {
                                      Get.to(TejasKundalSet())?.then((_) {
                                        setState(() {});
                                      });
                                    },
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Image.asset(
                                          "assets/images/zxnNFQUYS.png",
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                return Visibility(
                                  visible: widget.pranAGurUid!=FFAppState.instance.flexionLogUid,
                                  child: GestureDetector(
                                    behavior: HitTestBehavior.translucent,
                                    onTap: () {
                                      Get.dialog(
                                        TwistfLowReport(
                                          lumIAnatUid: widget.pranAGurUid,
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Image.asset(
                                          "assets/images/zuiNAYUSDS.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
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
                              padding: const EdgeInsets.only(top: 110),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  child: Flex(
                                    direction: Axis.vertical,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          bottom: 16,
                                        ),
                                        child: Text(
                                          karUnaUs!.vivekaUName,
                                          style: TextStyle(
                                            fontFamily: 'NotoSans',
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromRGBO(5, 3, 19, 1),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width: 100,
                                            height: 70,
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Flex(
                                                direction: Axis.vertical,
                                                children: [
                                                  Text(
                                                    "${drAIyengaAr.length}",
                                                    style: TextStyle(
                                                      fontFamily: 'NotoSans',
                                                      fontSize: 28,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Color.fromRGBO(
                                                        5,
                                                        3,
                                                        19,
                                                        1,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    "Works",
                                                    style: TextStyle(
                                                      fontFamily: 'NotoSans',
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color.fromRGBO(
                                                        136,
                                                        147,
                                                        162,
                                                        1,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 100,
                                            height: 70,
                                            child: Flex(
                                              direction: Axis.vertical,
                                              children: [
                                                Text(
                                                  "${karUnaUs.relations.vationUFollow.length}",
                                                  style: TextStyle(
                                                    fontFamily: 'NotoSans',
                                                    fontSize: 28,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color.fromRGBO(
                                                      5,
                                                      3,
                                                      19,
                                                      1,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "Followings",
                                                  style: TextStyle(
                                                    fontFamily: 'NotoSans',
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color.fromRGBO(
                                                      136,
                                                      147,
                                                      162,
                                                      1,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 100,
                                            height: 70,
                                            child: Align(
                                              alignment: Alignment.centerRight,
                                              child: Flex(
                                                direction: Axis.vertical,
                                                children: [
                                                  Text(
                                                    "${karUnaUs.relations.onactiUFans.length}",
                                                    style: TextStyle(
                                                      fontFamily: 'NotoSans',
                                                      fontSize: 28,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Color.fromRGBO(
                                                        5,
                                                        3,
                                                        19,
                                                        1,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    "Followers",
                                                    style: TextStyle(
                                                      fontFamily: 'NotoSans',
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color.fromRGBO(
                                                        136,
                                                        147,
                                                        162,
                                                        1,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      DecoratedBox(
                                        decoration: BoxDecoration(),
                                        child: Container(height: 28),
                                      ),

                                      Builder(
                                        builder: (context) {
                                          if (widget.sthIRaType == 1.0) {
                                            return GestureDetector(
                                              behavior:
                                                  HitTestBehavior.translucent,
                                              onTap: () {
                                                Get.to(AhimsTeyaGold())?.then((_){
                                                  setState(() {
                                                    
                                                  });
                                                });
                                              },
                                              child: Container(
                                                width: 335,
                                                height: 104,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      "assets/images/ncuqZXIJUT.png",
                                                    ),
                                                  ),
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                            -0.9,
                                                            0,
                                                          ),
                                                      child: Image.asset(
                                                        "assets/images/zxcqwBCWY.png",
                                                        width: 71,
                                                        height: 59,
                                                      ),
                                                    ),

                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                            left: 96,
                                                            top: 30,
                                                          ),
                                                      child: Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Text(
                                                          "${karUnaUs.relations.stillsUGood}",
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'NotoSans',
                                                            fontSize: 24,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color:
                                                                Color.fromRGBO(
                                                                  5,
                                                                  3,
                                                                  19,
                                                                  1,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),

                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                            0.85,
                                                            0,
                                                          ),
                                                      child: PhysicalModel(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 0,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              45,
                                                            ),
                                                        child: Container(
                                                          width: 100,
                                                          height: 40,
                                                          decoration: BoxDecoration(
                                                            border: Border.all(
                                                              color:
                                                                  const Color.fromRGBO(
                                                                    255,
                                                                    255,
                                                                    255,
                                                                    1,
                                                                  ),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  45,
                                                                ),
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

                                                            child: Row(
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets.all(
                                                                        1.0,
                                                                      ),
                                                                  child: Container(
                                                                    width: 48,
                                                                    height: 36,
                                                                    decoration: BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                            26,
                                                                          ),
                                                                      color:
                                                                          Color.fromRGBO(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            1,
                                                                          ),
                                                                    ),
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                            11.0,
                                                                          ),
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
                                                                    fontFamily:
                                                                        'NotoSans',
                                                                    fontSize:
                                                                        14,
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
                                                          ),
                                                        ),
                                                      ),
                                                    ),

                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                            right: 85,
                                                            top: 70,
                                                          ),
                                                      child: Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: ClipOval(
                                                          child: Container(
                                                            width: 15,
                                                            height: 15,
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
                                              ),
                                            );
                                          }
                                          return Visibility(
                                            visible: widget.pranAGurUid!=FFAppState.instance.flexionLogUid,
                                            child: Padding(
                                              padding: const EdgeInsets.only(bottom: 21),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  GestureDetector(
                                                    behavior:
                                                        HitTestBehavior.translucent,
                                                    onTap: () async {
                                                      await FFAppState.instance
                                                          .gicFAliniFo(
                                                            widget.pranAGurUid,
                                                          );
                                                      setState(() {});
                                                    },
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadiusGeometry.circular(
                                                            24,
                                                          ),
                                                      child: Container(
                                                        width: 151,
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
                                                            Icon(
                                                              karUnaUs
                                                                      .relations
                                                                      .onactiUFans
                                                                      .contains(
                                                                        FFAppState
                                                                            .instance
                                                                            .flexionLogUid,
                                                                      )
                                                                  ? Icons.check
                                                                  : Icons.add,
                                                              size: 30,
                                                              color: Color.fromRGBO(
                                                                136,
                                                                147,
                                                                162,
                                                                1,
                                                              ),
                                                            ),
                                                            SizedBox(width: 5),
                                                            Text(
                                                              karUnaUs
                                                                      .relations
                                                                      .onactiUFans
                                                                      .contains(
                                                                        FFAppState
                                                                            .instance
                                                                            .flexionLogUid,
                                                                      )
                                                                  ? "Following"
                                                                  : "Follow",
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
                                                  SizedBox(width: 17),
                                                  GestureDetector(
                                                    behavior:
                                                        HitTestBehavior.translucent,
                                                    onTap: () {
                                                      final amrITaCh = FFAppState
                                                          .instance
                                                          .zazImeAllChats
                                                          .where(
                                                            (pazir) =>
                                                                pazir
                                                                    .cheMIcalerUsers
                                                                    .contains(
                                                                      widget
                                                                          .pranAGurUid,
                                                                    ) &&
                                                                pazir
                                                                    .cheMIcalerUsers
                                                                    .contains(
                                                                      FFAppState
                                                                          .instance
                                                                          .flexionLogUid,
                                                                    ),
                                                          )
                                                          .toList();
                                              
                                                      int vrittiNewCId;
                                              
                                                      if (amrITaCh.isEmpty) {
                                                        vrittiNewCId =
                                                            FFAppState
                                                                .instance
                                                                .zazImeAllChats
                                                                .length +
                                                            1;
                                                        CinapRimideCh newKAtasaiCh =
                                                            CinapRimideCh(
                                                              serRAcidumCid:
                                                                  vrittiNewCId,
                                                              cheMIcalerUsers: [
                                                                FFAppState
                                                                    .instance
                                                                    .flexionLogUid,
                                                                widget.pranAGurUid,
                                                              ],
                                                              falOTioncIs: false,
                                                            );
                                              
                                                        FFAppState.instance
                                                            .draTUngAddCh(
                                                              newKAtasaiCh,
                                                            );
                                                      } else {
                                                        vrittiNewCId = amrITaCh
                                                            .first
                                                            .serRAcidumCid;
                                                      }
                                              
                                                      Get.to(
                                                        GrounnImiLia(
                                                          rabAHrtaCid: vrittiNewCId,
                                                          bhRIdhaUs: karUnaUs,
                                                        ),
                                                      );
                                                    },
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadiusGeometry.circular(
                                                            24,
                                                          ),
                                                      child: Container(
                                                        width: 151,
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
                                                              "Chat",
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
                                          );
                                        },
                                      ),

                                   
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Works",
                                          style: TextStyle(
                                            fontFamily: 'Raleway',
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(5, 3, 19, 1),
                                          ),
                                        ),
                                      ),
                                      DecoratedBox(
                                        decoration: BoxDecoration(),
                                        child: Container(height: 20),
                                      ),

                                      Wrap(
                                        runSpacing: 16,
                                        children: List.generate(drAIyengaAr.length, (
                                          index,
                                        ) {
                                          return GestureDetector(
                                            behavior:
                                                HitTestBehavior.translucent,
                                            onTap: () {
                                              Get.to(
                                                OpeniSofteNvdo(
                                                  equAThWoAid:
                                                      drAIyengaAr[index]
                                                          .lekhakAid,
                                                  asGTaUse: karUnaUs,
                                                  deSPiralLep:
                                                      drAIyengaAr[index]
                                                          .drishyaAVideo!,
                                                ),
                                              );
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                  255,
                                                  255,
                                                  255,
                                                  1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                          12,
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
                                                                    color: const Color(
                                                                      0xFF1E7EE6,
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
                                                                          karUnaUs
                                                                              .idanadiUAvatar,
                                                                        ),
                                                                        fit: BoxFit.cover
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
                                                              karUnaUs
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
                                                                      5,
                                                                      3,
                                                                      19,
                                                                      1,
                                                                    ),
                                                              ),
                                                            ),
                                                            Spacer(),
                                                            if (widget
                                                                    .pranAGurUid !=
                                                                FFAppState
                                                                    .instance
                                                                    .flexionLogUid)
                                                              GestureDetector(
                                                                behavior:
                                                                    HitTestBehavior
                                                                        .translucent,
                                                                onTap: () {
                                                                  Get.dialog(
                                                                    TwistfLowReport(
                                                                      lumIAnatUid:
                                                                          widget
                                                                              .pranAGurUid,
                                                                    ),
                                                                  );
                                                                },
                                                                child: Container(
                                                                  width: 40,
                                                                  height: 24,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Image.asset(
                                                                    "assets/images/zuiNAYUSDS.png",
                                                                  ),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                top: 8,
                                                                bottom: 12,
                                                              ),
                                                          child: Text(
                                                            drAIyengaAr[index]
                                                                .patralikaAText,
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Raleway',
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  Color.fromRGBO(
                                                                    5,
                                                                    3,
                                                                    19,
                                                                    .4,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Container(
                                                              width: 156,
                                                              height: 156,
                                                              decoration: BoxDecoration(
                                                                image: DecorationImage(
                                                                  image: AssetImage(
                                                                    drAIyengaAr[index]
                                                                        .chhaviAImg!,
                                                                  ),
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      16,
                                                                    ),
                                                              ),
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Container(
                                                                width: 24,
                                                                height: 24,
                                                                decoration: BoxDecoration(
                                                                  color:
                                                                      Color.fromRGBO(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        .4,
                                                                      ),
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Icon(
                                                                  Icons
                                                                      .play_arrow,
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
                                                            Expanded(
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 156,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  children: [
                                                                    Image.asset(
                                                                      "assets/images/xzbASNWQM.png",

                                                                      width:
                                                                          100,
                                                                      height:
                                                                          100,
                                                                    ),
                                                                    Image.asset(
                                                                      drAIyengaAr[index]
                                                                          .bhavanaAEmoji!,
                                                                      width: 62,
                                                                      height:
                                                                          62,
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
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadiusGeometry.only(
                                                                bottomLeft:
                                                                    Radius.circular(
                                                                      20,
                                                                    ),
                                                              ),
                                                          child: Container(
                                                            height: 64,
                                                            color:
                                                                Color.fromRGBO(
                                                                  235,
                                                                  240,
                                                                  245,
                                                                  1,
                                                                ),
                                                            alignment: Alignment
                                                                .center,
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
                                                                SizedBox(
                                                                  width: 5,
                                                                ),
                                                                Text(
                                                                  "${FFAppState.instance.tinPRimerTedGetCom(drAIyengaAr[index].lekhakAid).length}",
                                                                  style: TextStyle(
                                                                    fontFamily:
                                                                        'Raleway',
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
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
                                                      SizedBox(width: 1),
                                                      Expanded(
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadiusGeometry.only(
                                                                bottomRight:
                                                                    Radius.circular(
                                                                      20,
                                                                    ),
                                                              ),
                                                          child: Container(
                                                            height: 64,
                                                            color:
                                                                Color.fromRGBO(
                                                                  235,
                                                                  240,
                                                                  245,
                                                                  1,
                                                                ),
                                                            alignment: Alignment
                                                                .center,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Image.asset(
                                                                  drAIyengaAr[index]
                                                                          .prasanshaAUid
                                                                          .contains(
                                                                            FFAppState.instance.flexionLogUid,
                                                                          )
                                                                      ? "assets/images/xzncuiqANSUDQA.png"
                                                                      : "assets/images/fjquNXCUWQB.png",
                                                                  width: 28,
                                                                  height: 28,
                                                                ),
                                                                SizedBox(
                                                                  width: 5,
                                                                ),
                                                                Text(
                                                                  "${drAIyengaAr[index].atscioushCount + drAIyengaAr[index].prasanshaAUid.length}",
                                                                  style: TextStyle(
                                                                    fontFamily:
                                                                        'Raleway',
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
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
                                                ],
                                              ),
                                            ),
                                          );
                                        }),
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
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: PhysicalModel(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  borderRadius: BorderRadius.circular(45),
                                  child: Container(
                                    width: 88,
                                    height: 88,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color(0xFF1E7EE6),
                                      ),
                                      borderRadius: BorderRadius.circular(45),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              karUnaUs.idanadiUAvatar,
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            45,
                                          ),
                                        ),
                                        alignment: AlignmentDirectional(0, 0),
                                      ),
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
                ],
              ),
            ),

            Visibility(
              visible: widget.sthIRaType == 1.0,
              child: diviUNityneXia(),
            ),
          ],
        ),
      ),
    );
  }
}
