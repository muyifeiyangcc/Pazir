import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:pazir/backend/softenembod.dart';
import 'package:pazir/page/manipuramine/microbendjust.dart';

class TwistfLowReport extends StatefulWidget {
  const TwistfLowReport({super.key, required this.lumIAnatUid});

  final int lumIAnatUid;

  @override
  State<TwistfLowReport> createState() => _TwistfLowReport();
}

class _TwistfLowReport extends State<TwistfLowReport> {
  bool _svAaujYam = true;
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
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 311,
        height: 238,
        decoration: BoxDecoration(),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 311,
                height: 214,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/nxzuWNFASDB.png"),
                  ),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0, 1),
                  child: Container(
                    width: double.infinity,
                    height: 82,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            Get.back();
                          },
                          child: PhysicalModel(
                            color: Colors.transparent,
                            elevation: 0,
                            borderRadius: BorderRadius.circular(45),
                            child: Container(
                              width: 130,
                              height: 49,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(235, 240, 245, 1),
                                borderRadius: BorderRadius.circular(45),
                              ),
                              child: Center(
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(
                                    fontFamily: 'NotoSans',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(136, 147, 162, 1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () async {
                            if (_svAaujYam) {
                              Get.back();
                              Get.bottomSheet(
                                MicroBendJust(),
                                isScrollControlled: true,
                              );
                            } else {
                              await FFAppState.instance.unliGHtiTyAddBlo(
                                widget.lumIAnatUid,
                              );

                              Get.back();

                              SmartDialog.showToast("Blocked successful.");
                            }
                          },
                          child: PhysicalModel(
                            color: Colors.transparent,
                            elevation: 0,
                            borderRadius: BorderRadius.circular(45),
                            child: Container(
                              width: 130,
                              height: 49,
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
                                  child: Text(
                                    "Sure",
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
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    setState(() {
                      _svAaujYam = true;
                    });
                  },
                  child: Container(
                    width: _svAaujYam ? 132 : 100,
                    height: _svAaujYam ? 132 : 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      gradient: LinearGradient(
                        colors: _svAaujYam
                            ? [
                                Color.fromRGBO(254, 231, 139, 1),
                                Color.fromRGBO(235, 66, 103, 1),
                              ]
                            : [
                                Color.fromRGBO(255, 255, 255, 1),
                                Color.fromRGBO(255, 255, 255, 1),
                              ],
                        begin: Alignment(-0.7, -1),
                        end: Alignment(0.7, 1),
                      ),
                      border: Border.all(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        width: 2,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Visibility(
                          visible: _svAaujYam,
                          child: Transform.translate(
                            offset: Offset(-27, -46),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Image.asset(
                                "assets/images/zjnxXBZFYUQW.png",
                                width: 60,
                                height: 60,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Image(
                            image: AssetImage(
                              _svAaujYam
                                  ? "assets/images/zxbcNXUYQWG.png"
                                  : "assets/images/zxcyuqwBXCUQG.png",
                            ),
                            width: _svAaujYam ? 60 : 40,
                            height: _svAaujYam ? 60 : 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 15),
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    setState(() {
                      _svAaujYam = false;
                    });
                  },
                  child: Container(
                    width: !_svAaujYam ? 132 : 100,
                    height: !_svAaujYam ? 132 : 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      gradient: LinearGradient(
                        colors: !_svAaujYam
                            ? [
                                Color.fromRGBO(254, 231, 139, 1),
                                Color.fromRGBO(235, 66, 103, 1),
                              ]
                            : [
                                Color.fromRGBO(255, 255, 255, 1),
                                Color.fromRGBO(255, 255, 255, 1),
                              ],
                        begin: Alignment(-0.7, -1),
                        end: Alignment(0.7, 1),
                      ),
                      border: Border.all(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        width: 2,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Visibility(
                          visible: !_svAaujYam,
                          child: Transform.translate(
                            offset: Offset(27, -46),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Image.asset(
                                "assets/images/qwasXZBCYUQW.png",
                                width: 60,
                                height: 60,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Image(
                            image: AssetImage(
                              !_svAaujYam
                                  ? "assets/images/zxcuNVJ.png"
                                  : "assets/images/zxhqwBCJ.png",
                            ),
                            width: !_svAaujYam ? 60 : 40,
                            height: !_svAaujYam ? 60 : 40,
                          ),
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
    );
  }
}
