import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:pazir/Bpages/adjustRecord.dart';
import 'package:pazir/Bpages/dataLongTime.dart';
import 'package:pazir/Bpages/initpage.dart';
import 'package:pazir/backend/softenembod.dart';
import 'package:pazir/page/samadhihome/pranaajnashou.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await FFAppState.instance.init();
  await Datalongtime.initSharedPreference();
  await Adjustrecord.initAdjustSdk();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return GetMaterialApp(
      builder: FlutterSmartDialog.init(),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: FFAppState.instance.flexionLogUid == -1
            ? Initpage()
            : PranaAjnaShou(),
      ),
    );
  }
}
