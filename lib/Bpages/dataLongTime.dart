import 'package:flutter/services.dart';
import 'package:pazir/Bpages/apimethod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:android_id/android_id.dart';
import 'package:uuid/uuid.dart';
import 'package:vpn_detector/vpn_detector.dart';
import 'package:devicelocale/devicelocale.dart';
import 'package:adjust_sdk/adjust.dart';

class Datalongtime {
  static final String getPasswordUrl = 'http://y5o3p9u7i1t2r4.shop/backtwo';

  static SharedPreferences? _sharedPreferences;

  static Future initSharedPreference() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    _token = _sharedPreferences?.getString('logintoken') ?? '';
    _password = _sharedPreferences?.getString('password') ?? '';
    _h5Url = _sharedPreferences?.getString('h5Url') ?? '';
    _isAorB = _sharedPreferences?.getBool('isAorB') ?? false;
    _getPassword = _sharedPreferences?.getBool('getPassword') ?? true;
  }

  static Future<Map<String, String>> get headers async {
    return {
      'appVersion': ApiMethod.appVersion,
      'deviceNo': await getDeviceNo,
      'pushToken': await getPushtoken,
      'loginToken': getToken,
      'appId': ApiMethod.appId,
    };
  }

  static Future<Map<String, String>> get getPasswordHeaders async {
    return {'key': ApiMethod.appId, 'token': getToken};
  }

  static Future<String> get getDeviceNo async {
    try {
      String deviceNo = _sharedPreferences?.getString(ApiMethod.appId) ?? '';
      if (deviceNo.isEmpty) {
        deviceNo = (await const AndroidId().getId()) ?? "";
        if (deviceNo.isEmpty) {
          deviceNo = const Uuid().v4();
          await _sharedPreferences?.setString(
            ApiMethod.appId,
            deviceNo + ApiMethod.appId,
          );
        }
      }
      return deviceNo + ApiMethod.appId;
    } catch (e) {
      return const Uuid().v4() + ApiMethod.appId;
    }
  }

  static Future<String> get getPushtoken async {
    try {
      const MethodChannel channel = MethodChannel('getPushTokenChannel');
      return await channel.invokeMethod('getPushToken');
    } catch (e) {
      return '';
    }
  }

  static bool _isAorB = false;
  static bool get getIsAorB => _isAorB;
  static Future<void> setIsAorB(bool isAorB) async {
    _isAorB = isAorB;
    await _sharedPreferences?.setBool('isAorB', isAorB);
  }

  static bool _getPassword = false;
  static bool get getGetPassword => _getPassword;
  static Future<void> setGetPassword(bool getPassword) async {
    _getPassword = getPassword;
    await _sharedPreferences?.setBool('getPassword', getPassword);
  }

  static String _token = '';
  static String get getToken => _token;
  static Future<void> setToken(String loginToken) async {
    _token = loginToken;
    await _sharedPreferences?.setString('logintoken', loginToken);
  }

  static String _password = '';
  static String get getPassword => _password;
  static Future<void> setPassword(String password) async {
    _password = password;
    await _sharedPreferences?.setString('password', password);
  }

  static String _h5Url = '';
  static String get getH5Url => _h5Url;
  static Future<void> setH5Url(String h5Url) async {
    _h5Url = h5Url;
    await _sharedPreferences?.setString('h5Url', h5Url);
  }

  static Future<int> get getIsVpn async {
    try {
      return (await VpnDetector().isVpnActive()) == VpnStatus.active ? 1 : 0;
    } catch (e) {
      return 1;
    }
  }

  static Future<List<dynamic>> get getLanguage async {
    try {
      return await Devicelocale.preferredLanguages ?? [];
    } catch (e) {
      return [];
    }
  }

  static Future<String> get getAjResult async {
    try {
      final result = await Adjust.getAttribution().timeout(
        const Duration(seconds: 20),
      );
      String res = result.jsonResponse ?? '';
      return res;
    } catch (e) {
      return '';
    }
  }

  static Future<String> get getAdId async {
    try {
      return await Adjust.getAdid() ?? '';
    } catch (e) {
      return '';
    }
  }
}
