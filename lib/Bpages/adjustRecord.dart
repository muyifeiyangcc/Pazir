import 'package:adjust_sdk/adjust.dart';
import 'package:adjust_sdk/adjust_attribution.dart';
import 'package:adjust_sdk/adjust_config.dart';
import 'package:adjust_sdk/adjust_event.dart';
import 'package:pazir/Bpages/apimethod.dart';
import 'package:pazir/Bpages/dataLongTime.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Adjustrecord {
  static initAdjustSdk() async {
    Adjust.addGlobalCallbackParameter(
      "ta_distinct_id",
      await Datalongtime.getDeviceNo,
    );
    AdjustConfig config = AdjustConfig(
      '53jx2fxj0nls',
      AdjustEnvironment.production,
    );
    config.logLevel = AdjustLogLevel.verbose;
    config.isSendingInBackgroundEnabled = true;
    config.attributionCallback = (AdjustAttribution attribution) async {
      await installEvent();
    };
    Adjust.initSdk(config);
  }

  static installEvent() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    bool isInstall =
        sharedPreferences.getBool('qz8aNAB343czsMCZEpyn2sBB9lQ8AAg') ?? false;
    if (!isInstall) {
      AdjustEvent event = AdjustEvent('fyliic');
      Adjust.trackEvent(event);
      await adjustEventRecord(eventType: 0);
      sharedPreferences.setBool('qz8aNAB343czsMCZEpyn2sBB9lQ8AAg', true);
    }
  }

  static payEvent(double money) async {
    AdjustEvent event = AdjustEvent('ch8q3e');
    event.setRevenue(money, 'USD');
    Adjust.trackEvent(event);
  }

  static Future<dynamic> adjustEventRecord({int eventType = 0}) async {
    String eventTypeName = 'Install';
    switch (eventType) {
      case 0:
        eventTypeName = 'Install';
        break;
      case 1:
        eventTypeName = 'InitiateCheckout';
        break;
      case 2:
        eventTypeName = 'Purchase';
        break;
    }

    Map<String, dynamic> params = {
      'l5OnOwVM00TmFEyMtAt': await Datalongtime.getAjResult,
      'kBvPJoE7o2Lq2xzE2HWf7P4fAHe': eventTypeName,
      'z6BI1xWpyOcGzOzzdwLSd': await Datalongtime.getDeviceNo,
      'aY1SYdksmeNsnv5Z2y67qmGYQcxoa': await Datalongtime.getAdId,
    };
    return await ApiMethod.post(
      '/opi/v1/z9BAqs6WAWQj',
      params: params,
      headers: await Datalongtime.headers,
    );
  }
}
