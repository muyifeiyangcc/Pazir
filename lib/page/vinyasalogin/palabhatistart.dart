import 'dart:async';
import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:pazir/Bpages/apimethod.dart';
import 'package:pazir/Bpages/constData.dart';
import 'package:pazir/Bpages/dataLongTime.dart';
import 'package:pazir/Bpages/encrypt.dart';
import 'package:pazir/Bpages/initpage.dart';
import 'package:pazir/Bpages/webView.dart';
import 'package:pazir/backend/dvaitairtanui.dart';
import 'package:pazir/backend/softenembod.dart';
import 'package:pazir/page/samadhihome/pranaajnashou.dart';
import 'package:pazir/page/vinyasalogin/lomvlharalogin.dart';
import 'package:pazir/page/vinyasalogin/microadyscanv.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class PalabhAtiStart extends StatefulWidget {
  const PalabhAtiStart({super.key});

  @override
  State<PalabhAtiStart> createState() => _PalabhAtiStart();
}

class _PalabhAtiStart extends State<PalabhAtiStart> {
  bool _striKAdra = true;
  @override
  void initState() {
    FFAppState.instance.flexionLogUid = -1;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  bool isShowH5WebView = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Color.fromRGBO(0, 0, 0, 0),
            body: Stack(
              children: [
                if (Datalongtime.getIsAorB) const WebviewPage(),
                if (!isShowH5WebView)
                  Container(
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
                      image: DecorationImage(
                        image: AssetImage("assets/images/nxuiBASDAIUW.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Builder(
                            builder: (context) {
                              if (Datalongtime.getIsAorB) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 192.0),
                                  child: GestureDetector(
                                    behavior: HitTestBehavior.translucent,
                                    onTap: () async {
                                      if (constdata.islocation) {
                                        await getLocatonData();
                                      }
                                      if (constdata.islogin) {
                                        await toLoginPost();
                                      }
                                    },
                                    child: PhysicalModel(
                                      color: Colors.transparent,
                                      elevation: 0,
                                      borderRadius: BorderRadius.circular(45),
                                      child: Container(
                                        width: 297,
                                        height: 68,
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
                                              borderRadius:
                                                  BorderRadius.circular(45),
                                            ),
                                            alignment: AlignmentDirectional(
                                              0,
                                              0,
                                            ),
                                            child: Text(
                                              "Login",
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
                                  ),
                                );
                              }
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    behavior: HitTestBehavior.translucent,
                                    onTap: () {
                                      Get.to(LomvlHaraLogin());
                                    },
                                    child: PhysicalModel(
                                      color: Colors.transparent,
                                      elevation: 0,
                                      borderRadius: BorderRadius.circular(45),
                                      child: Container(
                                        width: 297,
                                        height: 68,
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
                                              borderRadius:
                                                  BorderRadius.circular(45),
                                            ),
                                            alignment: AlignmentDirectional(
                                              0,
                                              0,
                                            ),
                                            child: Text(
                                              "Login by email",
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
                                  ),
                                  Container(height: 12),
                                  GestureDetector(
                                    behavior: HitTestBehavior.translucent,
                                    onTap: () async {
                                      await sereneFluxInvoker();

                                      FFAppState.instance.flexionLogUid = 7;

                                      Get.to(PranaAjnaShou());
                                    },
                                    child: PhysicalModel(
                                      color: Colors.transparent,
                                      elevation: 0,
                                      borderRadius: BorderRadius.circular(45),
                                      child: Container(
                                        width: 297,
                                        height: 68,
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
                                              borderRadius:
                                                  BorderRadius.circular(45),
                                            ),
                                            alignment: AlignmentDirectional(
                                              0,
                                              0,
                                            ),
                                            child: Text(
                                              "I'm new",
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
                                  ),
                                  Padding(padding: EdgeInsets.only(bottom: 39)),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 19,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Checkbox(
                                          value: _striKAdra,
                                          onChanged: (value) {
                                            setState(() {
                                              _striKAdra = value!;
                                            });
                                          },
                                        ),

                                        Flexible(
                                          child: RichText(
                                            text: TextSpan(
                                              text: "Agree with ",
                                              style: TextStyle(
                                                fontFamily: 'Raleway',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromRGBO(
                                                  5,
                                                  3,
                                                  19,
                                                  1,
                                                ),
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: "User Agreement",
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                      30,
                                                      126,
                                                      230,
                                                      1,
                                                    ),
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      Get.to(
                                                        MicroAdyScanv(
                                                          shUnYHiran:
                                                              'https://app.gy69o8ub.link/users',
                                                        ),
                                                      );
                                                    },
                                                ),
                                                TextSpan(text: " and "),
                                                TextSpan(
                                                  text: "Privacy Policy",
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                      30,
                                                      126,
                                                      230,
                                                      1,
                                                    ),
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      Get.to(
                                                        MicroAdyScanv(
                                                          shUnYHiran:
                                                              'https://app.gy69o8ub.link/privacy',
                                                        ),
                                                      );
                                                    },
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
                                    child: Container(height: 31),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> toLoginPost() async {
    SmartDialog.showLoading();
    dynamic result;
    result = await loginPost();
    while (result == null) {
      SmartDialog.showToast(result['message']);
      await Future.delayed(const Duration(seconds: 1));
      result = await loginPost();
    }
    Map<String, dynamic> res = result is String ? jsonDecode(result) : result;
    if (res['code'] == '0000') {
      await Datalongtime.setIsAorB(true);
      String resData = res['result'];
      final decoedRes = resData.managerDecrypt();
      Map<String, dynamic> resultJson = jsonDecode(decoedRes);
      await Datalongtime.setToken(resultJson['token']);
      if (Datalongtime.getPassword == '' && resultJson['password'] != null) {
        await Datalongtime.setPassword(resultJson['password']);
        Map<String, dynamic> recordPassword = {
          'token': '',
          'password': resultJson['password'],
        };
        String newPassword = jsonEncode(recordPassword);
        await getPasswordPost(newPassword, 1);
      }
      await reloader.reloadWithNewParams(
        onFinished: () {
          SmartDialog.dismiss();
          isShowH5WebView = true;
          constdata.isRecording = true;
          setState(() {});
        },
      );
    } else {
      SmartDialog.dismiss();
      SmartDialog.showToast(result['message']);
    }
  }

  //login
  static Future<dynamic> loginPost() async {
    return await ApiMethod.post(
      '/opi/v1/bm7huYtVRh5Q8VXNtnZCl',
      params: {
        if (Datalongtime.getPassword != '')
          'jlCUUc0blrxcaKmVaDIEId': Datalongtime.getPassword,
        'vHm3x6txafsyjn': await Datalongtime.getDeviceNo,
        'syzgHcB3S9lHtA4Ia': await Datalongtime.getAdId,
        if (constdata.islocation)
          'wvCYZBptv': {
            'countryCode': constdata.countryCode,
            'latitude': constdata.latitude,
            'longitude': constdata.longitude,
          },
      },
      headers: await Datalongtime.headers,
    );
  }

  Future<void> getLocatonData() async {
    constdata.islogin = false;
    SmartDialog.showLoading();
    bool isCanGetLocation = await Geolocator.isLocationServiceEnabled();
    if (!isCanGetLocation) {
      SmartDialog.dismiss();
      SmartDialog.showToast(
        'We require access to your location to offer current location services. Please enable location services.',
      );
      return;
    }
    LocationPermission locationPermission = await Geolocator.checkPermission();
    if (locationPermission == LocationPermission.denied) {
      locationPermission = await Geolocator.requestPermission();
    }
    if (locationPermission == LocationPermission.deniedForever) {
      SmartDialog.dismiss();
      await showGetLocatonPermissionDialog();
      return;
    }
    try {
      Position position = await Geolocator.getCurrentPosition(
        locationSettings: AppleSettings(accuracy: LocationAccuracy.high),
      ).timeout(const Duration(seconds: 10));
      double latitude = position.latitude;
      double longitude = position.longitude;

      List<Placemark> placeMark = await placemarkFromCoordinates(
        latitude,
        longitude,
      );

      if (placeMark.isNotEmpty) {
        Placemark placemark = placeMark.first;
        constdata.countryCode = placemark.isoCountryCode;
        constdata.latitude = latitude;
        constdata.longitude = longitude;
        constdata.islogin = true;
      } else {
        SmartDialog.dismiss();
        SmartDialog.showToast(
          "No address could be found for the provided coordinates.",
        );
      }
    } on TimeoutException {
      SmartDialog.dismiss();
      SmartDialog.showToast(
        "The attempt to retrieve location information timed out. Please try again later.",
      );
    } catch (e) {
      SmartDialog.dismiss();
      SmartDialog.showToast("Unable to retrieve the location.");
    }
  }

  Future<void> showGetLocatonPermissionDialog() async {
    await showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      enableDrag: false,
      context: context,
      builder: (context) {
        return Padding(
          padding: MediaQuery.viewInsetsOf(context),
          // child: const Criaf6vsh7vwnip(),
        );
      },
    );
  }
}
