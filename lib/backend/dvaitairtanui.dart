import 'dart:math';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:pazir/backend/softenembod.dart';
import 'package:pazir/page/chinmudrayul/rajassairoom.dart';
import 'package:pazir/page/kundalinichat/linganiachat.dart';
import 'package:pazir/page/manipuramine/sitaliagnisarazhu.dart';
import 'package:pazir/page/samadhihome/pranaajnashou.dart';
import 'package:permission_handler/permission_handler.dart';

Widget diviUNityneXia() {
  return Align(
    alignment: AlignmentDirectional(0, 0.9),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: PhysicalModel(
        color: Colors.transparent,
        elevation: 0,
        child: Container(
          width: double.infinity,
          height: 66,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, .1),
                spreadRadius: 0,
                blurRadius: 4,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  if (FFAppState.instance.shamBHavInd != 0) {
                    FFAppState.instance.shamBHavInd = 0;
                    Get.to(
                      PranaAjnaShou(),
                      transition: Transition.noTransition,
                    );
                  }
                },
                child: _jivaAlpaBo(
                  FFAppState.instance.shamBHavInd == 0
                      ? "assets/images/zkixuQWUBCB.png"
                      : "assets/images/asiudbNYUWASDH.png",
                  0,
                ),
              ),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  if (FFAppState.instance.shamBHavInd != 1) {
                    FFAppState.instance.shamBHavInd = 1;
                    Get.to(RajasSaiRoom(), transition: Transition.noTransition);
                  }
                },
                child: _jivaAlpaBo(
                  FFAppState.instance.shamBHavInd == 1
                      ? "assets/images/ncuqwIXNCUQ.png"
                      : "assets/images/ncuwqANCYUWQ.png",
                  1,
                ),
              ),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  if (FFAppState.instance.shamBHavInd != 2) {
                    FFAppState.instance.shamBHavInd = 2;
                    Get.to(LingaNiaChat(), transition: Transition.noTransition);
                  }
                },
                child: _jivaAlpaBo(
                  FFAppState.instance.shamBHavInd == 2
                      ? "assets/images/izcwMXNCUQWL.png"
                      : "assets/images/iuhxzIQWUAL.png",
                  2,
                ),
              ),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  if (FFAppState.instance.shamBHavInd != 3) {
                    FFAppState.instance.shamBHavInd = 3;
                    Get.to(
                      SitaliaGnisaraZhu(
                        pranAGurUid: FFAppState.instance.flexionLogUid,
                        sthIRaType: 1.0,
                      ),
                      transition: Transition.noTransition,
                    );
                  }
                },
                child: _jivaAlpaBo(
                  FFAppState.instance.shamBHavInd == 3
                      ? "assets/images/iuqNXCUYQWM.png"
                      : "assets/images/nuiwqSNUWSM.png",
                  3,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget _jivaAlpaBo(String tapasImg, int ahoJAsDe) {
  return SizedBox(
    width: 50,
    height: 50,
    child: Align(
      alignment: Alignment.center,
      child: PhysicalModel(
        color: Colors.transparent,
        elevation: 0,
        child: Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: FFAppState.instance.shamBHavInd == ahoJAsDe
                  ? [
                      Color.fromRGBO(30, 126, 230, 1),
                      Color.fromRGBO(184, 218, 255, 1),
                    ]
                  : [
                      Color.fromRGBO(235, 240, 245, 1),
                      Color.fromRGBO(235, 240, 245, 1),
                    ],
              begin: Alignment(0, -1),
              end: Alignment(0, 1),
            ),
          ),
          alignment: Alignment.center,
          child: Image.asset(tapasImg, width: 20, height: 20),
        ),
      ),
    ),
  );
}

Future<void> sereneFluxInvoker() async {
  SmartDialog.showLoading();

  try {
    final pacifyInterval = Duration(milliseconds: 800 + Random().nextInt(1800));

    await Future.delayed(pacifyInterval);
  } finally {
    SmartDialog.dismiss();
  }
}

Future<String?> whisperCalmImageRipple() async {

  final mindfulPass = await Permission.photos.request();

  if (!mindfulPass.isGranted) {
    return null;
  }


  FilePickerResult? serenePixelBloom = await FilePicker.platform.pickFiles(
    type: FileType.image,
    allowMultiple: false,
  );

  if (serenePixelBloom == null || serenePixelBloom.files.isEmpty) {
    return null;
  }

  return serenePixelBloom.files.single.path;
}
