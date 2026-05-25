import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pazir/Bpages/apimethod.dart';
import 'package:pazir/Bpages/constData.dart';
import 'package:pazir/Bpages/dataLongTime.dart';
import 'package:pazir/Bpages/encrypt.dart';
import 'package:pazir/Bpages/webView.dart';
import 'package:pazir/backend/minspiritdenj.dart';
import 'package:pazir/page/vinyasalogin/palabhatistart.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:screen_protector/screen_protector.dart';

class Initpage extends StatefulWidget {
  const Initpage({super.key});

  @override
  State<Initpage> createState() => _InitpageState();
}

class _InitpageState extends State<Initpage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      judgeAorB();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/nxuiBASDAIUW.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Future<void> requestNotificationPermission() async {
    if (Platform.isAndroid) {
      final status = await Permission.notification.status;

      if (!status.isGranted) {
        await Permission.notification.request();
      }
    }
  }

  void judgeAorB() async {
    await requestNotificationPermission();
    dynamic result;
    Map<String, dynamic> params = {
      "tPXEVYJ0pS8ZAd": 1,
      "xXc4kNzVcmcJdGbLgohi0jBCAfn": await Datalongtime.getIsVpn,
      "iuoPHJZuqCFmbKeYMuMaQLnpwFHg": 1,
      "bqDVLPIe": await Datalongtime.getLanguage,
      "u2yA3K8KusOKfhgpQTC9j7BeBlYBa": await Datalongtime.getAjResult,
      "ntY4HpKO0LrBVdCiAjbKBNtQqtxi": await Datalongtime.getAdId,
    };
    result = await ApiMethod.post(
      '/opi/v1/g1fCpP5AR8XFAGvNeBqnJ1pEz5euC0o',
      params: params,
      headers: await Datalongtime.headers,
    );
    while (result == null) {
      await Future.delayed(Duration(seconds: 1));
      result = await ApiMethod.post(
        '/opi/v1/g1fCpP5AR8XFAGvNeBqnJ1pEz5euC0o',
        params: params,
        headers: await Datalongtime.headers,
      );
    }
    Map<String, dynamic> resultData = result is String
        ? jsonDecode(result)
        : result;
    if (resultData['code'] == '0000') {
      unawaited(() async {
        await ScreenProtector.preventScreenshotOn();
        await ScreenProtector.protectDataLeakageWithBlur();
      }());
      if (Datalongtime.getGetPassword) {
        await getPassword();
      }
      await Datalongtime.setGetPassword(false);
      await Datalongtime.setIsAorB(true);
      String res = resultData['result'];
      final resDecrypt = res.managerDecrypt();
      Map<String, dynamic> data = jsonDecode(resDecrypt);
      await Datalongtime.setH5Url(data['openValue']);
      constdata.islocation = data['locationFlag'] == 1;
      bool isLoginApp = data['loginFlag'] == 1 && Datalongtime.getToken != '';
      if (isLoginApp) {
        constdata.isRecording = true;
        Get.offAll(() => WebviewPage());
      } else {
        constdata.isRecording = false;
        Get.offAll(() => PalabhAtiStart());
      }
    } else {
      await Datalongtime.setIsAorB(false);
      constdata.isRecording = false;
      Get.offAll(() => PalabhAtiStart());
    }
  }

  Future<void> getPassword() async {
    dynamic result;
    result = await getPasswordPost('', 2);
    while (result == null) {
      await Future.delayed(const Duration(seconds: 1));
      result = await getPasswordPost('', 2);
    }
    Map<String, dynamic> decodeData = result is String
        ? jsonDecode(result)
        : result;
    if (decodeData['code'] == 200000 && decodeData['data'] != '') {
      Map<String, dynamic> decodeDataobj = jsonDecode(decodeData['data']);
      await Datalongtime.setPassword(decodeDataobj['password'] ?? '');
    }
  }
}

Future<dynamic> getPasswordPost(String password, int type) async {
  return await ApiMethod.post(
    '0e250d2a159083fa8fe00f6f7be641a3d7285e2d78fa63c20f7273fc045efbea53d0b5c271a7f42c8f30f8a05a336f6b60039df6bec10e3d1767550bdd0a02e8'
        .sovoTIonUl(),
    params: {
      'equipmentNo': await Datalongtime.getDeviceNo,
      'password': password,
      'type': type,
    },
    headers: await Datalongtime.getPasswordHeaders,
  );
}
