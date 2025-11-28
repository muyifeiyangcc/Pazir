import 'dart:math' as math;

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pazir/backend/atiliberationmes.dart';
import 'package:pazir/backend/prakritiuser.dart';
import 'package:pazir/backend/softenembod.dart';
import 'package:pazir/page/manipuramine/twistflowreport.dart';
import 'package:record/record.dart';

class GrounnImiLia extends StatefulWidget {
  const GrounnImiLia({
    super.key,
    required this.rabAHrtaCid,
    required this.bhRIdhaUs,
  });

  final int rabAHrtaCid;
  final RootingUsers bhRIdhaUs;

  @override
  State<GrounnImiLia> createState() => _GrounnImiLia();
}

class _GrounnImiLia extends State<GrounnImiLia> {
  final TextEditingController _hkARanIa = TextEditingController();
  bool _asTeyATya = false;
  AudioRecorder? _bhIEneraCRec;

  double atiCTerel = 0.0;

  DateTime? calANchoTim;
  late AudioPlayer _suAThwAb;
  @override
  void initState() {
    _suAThwAb = AudioPlayer();
    super.initState();
  }

  @override
  void dispose() {
    _suAThwAb.dispose();
    super.dispose();
  }

  Future<void> _popHEartCe() async {
    final tranquilPulse = AudioRecorder();
    _bhIEneraCRec = tranquilPulse;

    final mindfulAccess = await tranquilPulse.hasPermission();
    if (!mindfulAccess) return;

    final soulHaven = await getApplicationDocumentsDirectory();
    final softEchoPath =
        '${soulHaven.path}/${DateTime.now().millisecondsSinceEpoch}.m4a';

    await tranquilPulse.start(
      RecordConfig(encoder: AudioEncoder.aacLc),
      path: softEchoPath,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).unfocus();
        setState(() {
          _asTeyATya = false;
        });
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
                          left: 20,
                          right: 20,
                        ),
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
                              "  @${widget.bhRIdhaUs.vivekaUName}",
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(5, 3, 19, 1),
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              behavior: HitTestBehavior.translucent,
                              onTap: () {
                                Get.dialog(
                                  TwistfLowReport(
                                    lumIAnatUid: widget.bhRIdhaUs.sukhabUid,
                                  ),
                                );
                              },
                              child: Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(),
                                child: Image.asset(
                                  "assets/images/zuiNAYUSDS.png",
                                ),
                              ),
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
                            Flex(
                              direction: Axis.vertical,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(),
                                  child: Container(height: 81),
                                ),
                                Expanded(
                                  child: Builder(
                                    builder: (context) {
                                      final stipITtaMes = FFAppState
                                          .instance
                                          .dcenTErleMesList
                                          .where(
                                            (pazir) =>
                                                pazir.silEMindntCid ==
                                                widget.rabAHrtaCid,
                                          )
                                          .toList();
                                      return ListView(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 20,
                                        ),
                                        children: List.generate(stipITtaMes.length, (
                                          index,
                                        ) {
                                          if (stipITtaMes[index].alcMIndfUid ==
                                              widget.bhRIdhaUs.sukhabUid) {
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                    0,
                                                    0,
                                                    37,
                                                    20,
                                                  ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Column(
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
                                                          width: 49,
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
                                                                  1.5,
                                                                ),
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                image: DecorationImage(
                                                                  image: AssetImage(
                                                                    widget
                                                                        .bhRIdhaUs
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
                                                      DecoratedBox(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Container(
                                                          height: 4,
                                                        ),
                                                      ),
                                                      Text(
                                                        stipITtaMes[index]
                                                            .htRIsomacTime!,
                                                        style: TextStyle(
                                                          fontFamily: 'Raleway',
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Color.fromRGBO(
                                                            5,
                                                            3,
                                                            19,
                                                            .4,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(width: 12),
                                                  Flexible(
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: Color.fromRGBO(
                                                          30,
                                                          126,
                                                          230,
                                                          1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.only(
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
                                                          stipITtaMes[index]
                                                              .beninVErsiDInfo,
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Raleway',
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w400,
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
                                                ],
                                              ),
                                            );
                                          } else {
                                            if (stipITtaMes[index]
                                                    .beninVErsiDInfo ==
                                                "") {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                      0,
                                                      0,
                                                      0,
                                                      37,
                                                    ),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Flexible(
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                          color: Color.fromRGBO(
                                                            235,
                                                            240,
                                                            245,
                                                            1,
                                                          ),
                                                          borderRadius: BorderRadius.only(
                                                            topLeft:
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
                                                          child: GestureDetector(
                                                            behavior:
                                                                HitTestBehavior
                                                                    .translucent,
                                                            onTap: () async {
                                                              await _suAThwAb.play(
                                                                DeviceFileSource(
                                                                  stipITtaMes[index]
                                                                      .linroOTlockeVoi!,
                                                                ),
                                                                volume: 1.0,
                                                              );
                                                            },
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Image(
                                                                  image: AssetImage(
                                                                    "assets/images/czxCQWUY.png",
                                                                  ),
                                                                  width: 24,
                                                                  height: 24,
                                                                ),
                                                                Text(
                                                                  stipITtaMes[index]
                                                                      .rgorGAnicYshi!,
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
                                                    SizedBox(width: 12),
                                                    Column(
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
                                                            width: 49,
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
                                                                    1.5,
                                                                  ),
                                                              child: Container(
                                                                decoration: BoxDecoration(
                                                                  image: DecorationImage(
                                                                    image: AssetImage(
                                                                      FFAppState
                                                                          .instance
                                                                          .dingingGetUser(
                                                                            FFAppState.instance.flexionLogUid,
                                                                          )!
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
                                                        DecoratedBox(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Container(
                                                            height: 4,
                                                          ),
                                                        ),
                                                        Text(
                                                          stipITtaMes[index]
                                                              .htRIsomacTime!,
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
                                                  ],
                                                ),
                                              );
                                            } else {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                      0,
                                                      0,
                                                      0,
                                                      37,
                                                    ),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Flexible(
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                          color: Color.fromRGBO(
                                                            235,
                                                            240,
                                                            245,
                                                            1,
                                                          ),
                                                          borderRadius: BorderRadius.only(
                                                              topLeft:
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
                                                            stipITtaMes[index]
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
                                                    SizedBox(width: 12),
                                                    Column(
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
                                                            width: 49,
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
                                                                    1.5,
                                                                  ),
                                                              child: Container(
                                                                decoration: BoxDecoration(
                                                                  image: DecorationImage(
                                                                    image: AssetImage(
                                                                      FFAppState
                                                                          .instance
                                                                          .dingingGetUser(
                                                                            FFAppState.instance.flexionLogUid,
                                                                          )!
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
                                                        DecoratedBox(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Container(
                                                            height: 4,
                                                          ),
                                                        ),
                                                        Text(
                                                          stipITtaMes[index]
                                                              .htRIsomacTime!,
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
                                                  ],
                                                ),
                                              );
                                            }
                                          }
                                        }),
                                      );
                                    },
                                  ),
                                ),

                                Container(
                                  width: double.infinity,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  child: Align(
                                    alignment: AlignmentDirectional(0, -0.5),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        top: 12,
                                        bottom: 30,
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 20,
                                            ),
                                            child: Row(
                                              children: [
                                                GestureDetector(
                                                  behavior: HitTestBehavior
                                                      .translucent,
                                                  onTap: () {
                                                    setState(() {
                                                      _asTeyATya = !_asTeyATya;
                                                    });
                                                  },
                                                  child: Container(
                                                    width: 40,
                                                    height: 40,
                                                    decoration: BoxDecoration(),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                            8.0,
                                                          ),
                                                      child: Image(
                                                        image: AssetImage(
                                                          "assets/images/xzkciuNXZUQY.png",
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 8),
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
                                                          BorderRadius.circular(
                                                            16,
                                                          ),
                                                    ),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                          horizontal: 16,
                                                        ),
                                                    alignment: Alignment.center,
                                                    child: TextField(
                                                      controller: _hkARanIa,
                                                      decoration: InputDecoration(
                                                        hintText: "Enter...",
                                                        hintStyle: TextStyle(
                                                          fontFamily: 'Raleway',
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Color.fromRGBO(
                                                            5,
                                                            3,
                                                            19,
                                                            .4,
                                                          ),
                                                        ),

                                                        border:
                                                            InputBorder.none,
                                                      ),
                                                      style: TextStyle(
                                                        fontFamily: 'Raleway',
                                                        fontSize: 14,
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
                                                  ),
                                                ),

                                                SizedBox(width: 8),

                                                GestureDetector(
                                                  behavior: HitTestBehavior
                                                      .translucent,
                                                  onTap: () async {
                                                    if (_hkARanIa.text != "") {
                                                      DcenTErleMes
                                                      neWNaviMes = DcenTErleMes(
                                                        silEMindntCid:
                                                            widget.rabAHrtaCid,
                                                        alcMIndfUid: FFAppState
                                                            .instance
                                                            .flexionLogUid,
                                                        beninVErsiDInfo:
                                                            _hkARanIa.text,
                                                        htRIsomacTime:
                                                            DateFormat(
                                                              'hh:mm',
                                                            ).format(
                                                              DateTime.now(),
                                                            ),
                                                      );
                                                      await FFAppState.instance
                                                          .fluiDMspAddMes(
                                                            neWNaviMes,
                                                          );
                                                      _hkARanIa.clear();
                                                      setState(() {});
                                                    }
                                                  },
                                                  child: PhysicalModel(
                                                    color: Colors.transparent,
                                                    elevation: 0,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          45,
                                                        ),
                                                    child: Container(
                                                      width: 67,
                                                      height: 55,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              20,
                                                            ),
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
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                20,
                                                              ),
                                                        ),
                                                        alignment:
                                                            AlignmentDirectional(
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
                                                ),
                                              ],
                                            ),
                                          ),
                                          if (_asTeyATya)
                                            GestureDetector(
                                              behavior:
                                                  HitTestBehavior.translucent,
                                              onTap: () {
                                                SmartDialog.showToast(
                                                  "Press and hold to record.",
                                                );
                                              },
                                              onLongPressStart: (_) async {
                                                setState(() {
                                                  atiCTerel = 1.0;
                                                });
                                                calANchoTim = DateTime.now();

                                                _popHEartCe();
                                              },
                                              onLongPressEnd: (_) async {
                                                setState(() {
                                                  atiCTerel = 0.0;
                                                });

                                                String tdCAlmiZh =
                                                    "${DateTime.now().difference(calANchoTim!).inSeconds}S";

                                                final poapworrt =
                                                    await _bhIEneraCRec!.stop();

                                                if (poapworrt != null) {
                                                  DcenTErleMes
                                                  neWNaviMes = DcenTErleMes(
                                                    silEMindntCid:
                                                        widget.rabAHrtaCid,
                                                    alcMIndfUid: FFAppState
                                                        .instance
                                                        .flexionLogUid,
                                                    beninVErsiDInfo: "",
                                                    linroOTlockeVoi: poapworrt,
                                                    rgorGAnicYshi: tdCAlmiZh,
                                                    htRIsomacTime: DateFormat(
                                                      'hh:mm',
                                                    ).format(DateTime.now()),
                                                  );
                                                  await FFAppState.instance
                                                      .fluiDMspAddMes(
                                                        neWNaviMes,
                                                      );
                                                  _hkARanIa.clear();
                                                  setState(() {});
                                                }
                                              },
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Opacity(
                                                    opacity: atiCTerel,
                                                    child: Container(
                                                      width: 120,
                                                      height: 120,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: LoadingIndicator(
                                                        indicatorType: Indicator
                                                            .ballScaleMultiple,
                                                        colors: const [
                                                          Color.fromRGBO(
                                                            30,
                                                            126,
                                                            230,
                                                            1,
                                                          ),
                                                        ],
                                                        strokeWidth: 2,
                                                      ),
                                                    ),
                                                  ),
                                                  PhysicalModel(
                                                    color: Colors.transparent,
                                                    elevation: 0,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          45,
                                                        ),
                                                    child: Container(
                                                      width: 82,
                                                      height: 82,
                                                      decoration: BoxDecoration(
                                                        gradient:
                                                            LinearGradient(
                                                              colors: [
                                                                Color.fromRGBO(
                                                                  30,
                                                                  126,
                                                                  230,
                                                                  0.2,
                                                                ),
                                                                Color.fromRGBO(
                                                                  184,
                                                                  218,
                                                                  255,
                                                                  0.2,
                                                                ),
                                                              ],
                                                              begin: Alignment(
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
                                                              begin: Alignment(
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
                                                          alignment:
                                                              AlignmentDirectional(
                                                                0,
                                                                0,
                                                              ),
                                                          child: Image.asset(
                                                            "assets/images/cuiqNCQWY.png",
                                                            width: 24,
                                                            height: 24,
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
