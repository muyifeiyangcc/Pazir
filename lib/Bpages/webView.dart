import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

  bool _isReloading = false;
  VoidCallback? _onFinished;

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
  final InAppWebViewKeepAlive keepsakePayVault = InAppWebViewKeepAlive();

  @override
  void initState() {
    super.initState();
    flotwIStinGood.inItiaLizePyrChaSeFlOw();

    flotwIStinGood.kabHAviCa = () => setState(() {});
    isRecording = true;
  }

  @override
  void dispose() {
    flotwIStinGood.onClose();
    unawaited(InAppWebViewController.disposeKeepAlive(keepsakePayVault));
    super.dispose();
  }

  Future<bool> enableGooglePayWebView() async {
    try {
      final bool? enabled = await const MethodChannel(
        'getPushTokenChannel',
      ).invokeMethod<bool>('enableGooglePayInWebView');
      return enabled ?? false;
    } catch (e) {
      debugPrint("Failed to enable Google Pay in WebView: $e");
      // Android 低版本或 WebView 不支持时由 H5 自己降级。
      return false;
    }
  }

  Future<void> _kcuvgiwenloadPayWebView(
    InAppWebViewController controller,
  ) async {
    await enableGooglePayWebView();
    if (!mounted) return;
    await controller.loadUrl(urlRequest: URLRequest(url: WebUri(h5Url)));
  }

  bool isLoading = true;
  final GlobalKey _globalKey = GlobalKey();

  InAppWebViewController? _controller;
  Map<String, dynamic> get paramrs => {
    'token': Datalongtime.getToken,
    'timestamp': DateTime.now().millisecondsSinceEpoch,
  };
  String get enCodeParams => jsonEncode(paramrs).managerEncode();
  String get h5Url =>
      '${Datalongtime.getH5Url}?openParams=$enCodeParams&appId=${ApiMethod.appId}';

  bool isRecording = true;
  bool isClickLogout = false;

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
                          keepAlive: keepsakePayVault,
                          onLoadStart: (controller, url) {
                            userActionUp('page_load_begin');
                            reloader.handleLoadStop(url);
                            isLoading = true;
                            setState(() {});
                          },
                          onLoadStop: (controller, url) async {
                            isLoading = false;
                            setState(() {});
                            if (constdata.isRecording && isRecording) {
                              isRecording = false;
                              userActionUp('page_load_end');
                            }
                          },
                          onReceivedError: (controller, request, error) {
                            userActionUp('page_load_error');
                          },
                          key: _globalKey,
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
                            unawaited(_kcuvgiwenloadPayWebView(controller));
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
                                if (isClickLogout) return;
                                isClickLogout = true;
                                Map<String, dynamic> updataPasswordDataParams =
                                    {
                                      'token': '',
                                      'password': Datalongtime.getPassword,
                                    };
                                String updataPasswordJson = jsonEncode(
                                  updataPasswordDataParams,
                                );
                                Get.offAll(() => Initpage());
                                Future<void>(() async {
                                  await _logoutInBackground(updataPasswordJson);
                                });
                                return null;
                              },
                            );
                            _controller!.addJavaScriptHandler(
                              handlerName: "openBrowser",
                              callback: (args) async {
                                bool state = false;
                                Uri? url;
                                if (args[0]["type"] == "system") {
                                  url = Uri.parse(args[0]["url"]);
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
                                var url = navigationAction.request.url!;
                                if ([
                                  "phonepe",
                                  "paytmmp",
                                  "gpay",
                                  "com.amazon.mobile.shopping",
                                  "mobikwik",
                                  "freecharge",
                                  "upi",
                                ].contains(url.scheme)) {
                                  bool state = false;
                                  try {
                                    state = await launchUrl(
                                      url,
                                      mode: LaunchMode.externalApplication,
                                    );
                                  } catch (e) {
                                    state = false;
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
                                if (![
                                  "http",
                                  "https",
                                  "file",
                                  "chrome",
                                  "data",
                                  "javascript",
                                  "about",
                                ].contains(url.scheme)) {
                                  bool state = false;
                                  if (await canLaunchUrl(url)) {
                                    state = await launchUrl(
                                      url,
                                      mode: LaunchMode.externalApplication,
                                    );
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
                                }
                                return NavigationActionPolicy.ALLOW;
                              },
                        ),
                      ),
                    ),
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

  Future<void> _logoutInBackground(String updataPasswordJson) async {
    try {
      await getPasswordPost(updataPasswordJson, 1);
      await Datalongtime.setToken('');
    } catch (e) {
      debugPrint('logout background task failed: $e');
    }
  }

  void recordPay(String message) async {
    await flotwIStinGood.inVokEPrOduCtReq(message);
  }
}
