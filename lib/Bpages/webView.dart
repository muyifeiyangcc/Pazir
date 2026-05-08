import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:pazir/Bpages/apimethod.dart';
import 'package:pazir/Bpages/constData.dart';
import 'package:pazir/Bpages/dataLongTime.dart';
import 'package:pazir/Bpages/encrypt.dart';
import 'package:pazir/Bpages/initpage.dart';
import 'package:pazir/backend/flotwistingood.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Webview {
  final InAppWebViewController controller;

  Webview(this.controller);

  /// 标记 reload 是否完成
  bool _isReloading = false;
  VoidCallback? _onFinished;

  /// reload 带回调
  Future<void> reloadWithNewParams({VoidCallback? onFinished}) async {
    _isReloading = true;
    _onFinished = onFinished;

    final params = {
      'token': Datalongtime.getToken,
      'timestamp': DateTime.now().millisecondsSinceEpoch,
    };

    final openParams = jsonEncode(params).managerEncode();

    final newUrl =
        '${Datalongtime.getH5Url}?openParams=$openParams&appId=${ApiMethod.appId}';

    await controller.loadUrl(urlRequest: URLRequest(url: WebUri(newUrl)));
  }

  /// 必须在 InAppWebView 的 onLoadStop 里调用
  void handleLoadStop(Uri? url) {
    if (_isReloading) {
      _isReloading = false;
      _onFinished?.call();
      _onFinished = null;
    }
  }
}

late Webview reloader;

class WebviewPage extends StatefulWidget {
  const WebviewPage({super.key});

  @override
  State<WebviewPage> createState() => _WebviewPageState();
}

class _WebviewPageState extends State<WebviewPage> {
  FlotwIStinGood flotwIStinGood = FlotwIStinGood();

  @override
  void initState() {
    super.initState();
    flotwIStinGood.inItiaLizePyrChaSeFlOw();

    flotwIStinGood.kabHAviCa = () => setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    flotwIStinGood.onClose();
  }

  bool isLoading = true;
  final GlobalKey _globalKey = GlobalKey();
  late DateTime loadingStartTime;
  late DateTime loadingEndTime;
  InAppWebViewController? _controller;
  Map<String, dynamic> get paramrs => {
    'token': Datalongtime.getToken,
    'timestamp': DateTime.now().millisecondsSinceEpoch,
  };
  String get enCodeParams => jsonEncode(paramrs).managerEncode();
  String get h5Url =>
      '${Datalongtime.getH5Url}?openParams=$enCodeParams&appId=${ApiMethod.appId}';
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_controller != null) {
          final isCanBack = await _controller!.canGoBack();
          if (isCanBack) {
            _controller!.goBack();
            return false;
          }
        }
        return false;
      },
      child: Scaffold(
        backgroundColor: const Color(0xff04153B),
        body: SafeArea(
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
              image: DecorationImage(
                image: AssetImage("assets/images/webviewbg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: isLoading
                              ? Colors.transparent
                              : const Color(0xff170F3F),
                        ),
                        child: InAppWebView(
                          onLoadStart: (controller, url) {
                            reloader.handleLoadStop(url);
                            isLoading = true;
                            setState(() {});
                            loadingStartTime = DateTime.now();
                          },
                          onLoadStop: (controller, url) async {
                            isLoading = false;
                            setState(() {});
                            loadingEndTime = DateTime.now();
                            int loadingTime = loadingEndTime
                                .difference(loadingStartTime)
                                .inMilliseconds;
                            if (constdata.isRecording) {
                              await recordLoadingTime(loadingTime);
                            }
                          },
                          key: _globalKey,
                          initialUrlRequest: URLRequest(url: WebUri(h5Url)),
                          initialSettings: InAppWebViewSettings(
                            iframeAllowFullscreen: true,
                            useShouldOverrideUrlLoading: true,
                            allowsInlineMediaPlayback: true,
                            transparentBackground: true,
                            cacheEnabled: true,
                            iframeAllow: "camera; microphone",
                            mediaPlaybackRequiresUserGesture: false,
                          ),
                          onWebViewCreated: (controller) {
                            _controller = controller;
                            reloader = Webview(controller);
                            _controller!.addJavaScriptHandler(
                              handlerName: 'rechargePay',
                              callback: (args) {
                                final argsData = args[0];
                                constdata.order = argsData['orderCode'];
                                recordPay(argsData['batchNo']);
                                return null;
                              },
                            );
                            _controller!.addJavaScriptHandler(
                              handlerName: 'close',
                              callback: (args) async {
                                Map<String, dynamic> updataPasswordDataParams =
                                    {
                                      'token': '',
                                      'password': Datalongtime.getPassword,
                                    };
                                String updataPasswordJson = jsonEncode(
                                  updataPasswordDataParams,
                                );
                                print(updataPasswordJson);
                                await getPasswordPost(updataPasswordJson, 1);
                                await Datalongtime.setToken('');
                                Get.offAll(() => Initpage());
                                return null;
                              },
                            );
                            _controller!.addJavaScriptHandler(
                              handlerName: 'openBrowser',
                              callback: (args) async {
                                bool state = false;
                                final body = args[0];
                                String urlStr = body['url'];
                                final Uri? url = Uri.tryParse(urlStr);
                                if (url != null) {
                                  state = await launchUrl(
                                    url,
                                    mode: LaunchMode.externalApplication,
                                  );
                                }
                                String jsStr =
                                    "window.dispatchEvent(new CustomEvent('nativeOpenState',{detail:{state:{state},url:{url}}}))";

                                String jsJson = jsStr
                                    .replaceAll(
                                      '{state}',
                                      jsonEncode(state ? 'success' : 'failed'),
                                    )
                                    .replaceAll(
                                      '{url}',
                                      jsonEncode(url.toString()),
                                    );

                                await _controller!.evaluateJavascript(
                                  source: jsJson,
                                );
                                return null;
                              },
                            );
                          },
                          onPermissionRequest:
                              (controller, permissionRequest) async {
                                await [
                                  Permission.microphone,
                                  Permission.camera,
                                ].request();
                                return PermissionResponse(
                                  resources: permissionRequest.resources,
                                  action: PermissionResponseAction.GRANT,
                                );
                              },
                          shouldOverrideUrlLoading:
                              (controller, navigationAction) async {
                                final url = navigationAction.request.url!;
                                bool state = false;
                                if (_urlIsComment(url.scheme)) {
                                  if (await canLaunchUrl(url)) {
                                    state = await launchUrl(url);
                                  }
                                  String jsStr =
                                      "window.dispatchEvent(new CustomEvent('nativeOpenState',{detail:{state:{state},url:{url}}}))";

                                  String jsJson = jsStr
                                      .replaceAll(
                                        '{state}',
                                        jsonEncode(
                                          state ? 'success' : 'failed',
                                        ),
                                      )
                                      .replaceAll(
                                        '{url}',
                                        jsonEncode(url.toString()),
                                      );

                                  await _controller!.evaluateJavascript(
                                    source: jsJson,
                                  );
                                  return NavigationActionPolicy.CANCEL;
                                }
                                return NavigationActionPolicy.ALLOW;
                              },
                        ),
                      ),
                    ), //expend
                  ],
                ),
                if (isLoading)
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black.withValues(alpha: .5),
                      ),
                      child: Center(
                        child: LoadingAnimationWidget.staggeredDotsWave(
                          color: Colors.yellow,
                          size: 50,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool _urlIsComment(String url) {
    final String scheme = url.toLowerCase();
    return scheme != 'http' &&
        scheme != 'https' &&
        scheme != 'file' &&
        scheme != 'about';
  }

  Future<void> recordLoadingTime(int loadingTime) async {
    await recordH5Loading(loadingTime.toString());
  }

  void recordPay(String message) async {
    await flotwIStinGood.inVokEPrOduCtReq(message);
  }

  //h5loading
  static Future<dynamic> recordH5Loading(String loadingTimeStr) async {
    return await ApiMethod.post(
      '/opi/v1/gO6lZepd6eitLcxZTwcsggJo20fAfvEt',
      params: {'rQlXEEmf3deMouVo': loadingTimeStr},
      headers: await Datalongtime.headers,
    );
  }
}
