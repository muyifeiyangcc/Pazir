import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:pazir/backend/prakritiuser.dart';
import 'package:pazir/backend/softenembod.dart';
import 'package:pazir/page/manipuramine/twistflowreport.dart';
import 'package:pazir/page/samadhihome/kirtdhisthcomment.dart';
import 'package:video_player/video_player.dart';

class OpeniSofteNvdo extends StatefulWidget {
  const OpeniSofteNvdo({
    super.key,
    required this.equAThWoAid,
    required this.asGTaUse,
    required this.deSPiralLep,
  });

  final int equAThWoAid;
  final RootingUsers asGTaUse;
  final String deSPiralLep;

  @override
  State<OpeniSofteNvdo> createState() => _OpeniSofteNvdo();
}

class _OpeniSofteNvdo extends State<OpeniSofteNvdo> {
  late VideoPlayerController _anGEntlEic;
  bool _hinFINiTet = false;

  String _shiBReFt = "1";
  @override
  void initState() {
    super.initState();

    _anGEntlEic = VideoPlayerController.asset(widget.deSPiralLep)
      ..initialize().then((_) {
        _anGEntlEic
          ..setLooping(true)
          ..play();
        _hinFINiTet = true;
        setState(() {});
      });
  }

  @override
  void dispose() {
    _anGEntlEic.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final thEArtHa = FFAppState.instance.minshiftGetArt(widget.equAThWoAid);
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        if (_shiBReFt == "1") {
          _anGEntlEic.pause();
          _shiBReFt = "2";
        } else {
          _anGEntlEic.play();
          _shiBReFt = "1";
        }
        setState(() {});
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
            !_hinFINiTet
                ? Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: LoadingIndicator(
                        indicatorType: Indicator.lineSpinFadeLoader,
                        colors: const [Colors.white],
                        strokeWidth: 2,
                      ),
                    ),
                  )
                : VideoPlayer(_anGEntlEic),
            Scaffold(
              backgroundColor: Color.fromRGBO(0, 0, 0, 0),
              body: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      height: 300,
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
                            if(widget.asGTaUse.sukhabUid!=FFAppState.instance.flexionLogUid)
                            GestureDetector(
                              behavior: HitTestBehavior.translucent,
                              onTap: () {
                                Get.dialog(
                                  TwistfLowReport(
                                    lumIAnatUid: widget.asGTaUse.sukhabUid,
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
                            if (_shiBReFt == "2")
                              Align(
                                alignment: AlignmentDirectional(0, -0.15),
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 255, 255, .4),
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    size: 40,
                                  ),
                                ),
                              ),

                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        PhysicalModel(
                                          color: Colors.transparent,
                                          elevation: 0,
                                          borderRadius: BorderRadius.circular(
                                            45,
                                          ),
                                          child: Container(
                                            width: 32,
                                            height: 32,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xFF1E7EE6),
                                              ),
                                              shape: BoxShape.circle,
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
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      widget
                                                          .asGTaUse
                                                          .idanadiUAvatar,
                                                    ),
                                                  ),
                                                ),
                                                alignment: AlignmentDirectional(
                                                  0,
                                                  0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 11),
                                        Text(
                                          widget.asGTaUse.vivekaUName,
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
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 8,
                                        bottom: 12,
                                      ),
                                      child: Text(
                                        thEArtHa!.patralikaAText,
                                        style: TextStyle(
                                          fontFamily: 'Raleway',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(
                                            255,
                                            255,
                                            255,
                                            .6,
                                          ),
                                        ),
                                      ),
                                    ),

                                    Row(
                                      children: [
                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/images/xzbASNWQM.png",

                                              width: 60,
                                              height: 60,
                                            ),
                                            Image.asset(
                                              thEArtHa.bhavanaAEmoji!,
                                              width: 37,
                                              height: 37,
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 12),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: GestureDetector(
                                                  behavior: HitTestBehavior
                                                      .translucent,
                                                  onTap: () {
                                                    Get.bottomSheet(
                                                      KirtdhiSthComment(
                                                        ugaMAskrAid:
                                                            widget.equAThWoAid,
                                                      ),
                                                    );
                                                  },
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadiusGeometry.circular(
                                                          24,
                                                        ),
                                                    child: Container(
                                                      height: 64,
                                                      color: Color.fromRGBO(
                                                        255,
                                                        255,
                                                        255,
                                                        .2,
                                                      ),
                                                      alignment:
                                                          Alignment.center,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Image.asset(
                                                            "assets/images/wqsaXZCIa.png",
                                                            width: 28,
                                                            height: 28,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            "${FFAppState.instance.tinPRimerTedGetCom(widget.equAThWoAid).length}",
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
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 8),
                                              Expanded(
                                                child: GestureDetector(
                                                  behavior: HitTestBehavior
                                                      .translucent,
                                                  onTap: () async {
                                                    await FFAppState.instance
                                                        .eatfLUiDhArt(
                                                          widget.equAThWoAid,
                                                          FFAppState
                                                              .instance
                                                              .flexionLogUid,
                                                        );
                                                    setState(() {});
                                                  },
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadiusGeometry.circular(
                                                          24,
                                                        ),
                                                    child: Container(
                                                      height: 64,
                                                      color: Color.fromRGBO(
                                                        255,
                                                        255,
                                                        255,
                                                        .2,
                                                      ),
                                                      alignment:
                                                          Alignment.center,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Image.asset(
                                                            thEArtHa.prasanshaAUid
                                                                    .contains(
                                                                      FFAppState
                                                                          .instance
                                                                          .flexionLogUid,
                                                                    )
                                                                ? "assets/images/xzncuiqANSUDQA.png"
                                                                : "assets/images/fjquNXCUWQB.png",
                                                            width: 28,
                                                            height: 28,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            "${thEArtHa.atscioushCount + thEArtHa.prasanshaAUid.length}",
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
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(),
                        child: Container(height: 30),
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
