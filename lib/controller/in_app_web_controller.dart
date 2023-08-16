import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import '../common/config.dart';
import '../common/utils/storage_manage.dart';

class InAppController extends GetxController {
  final StorageManage storageManage = StorageManage();
  final GlobalKey webViewKey = GlobalKey();
  RxInt currentIndex = 0.obs;
  CookieManager cookieManager = CookieManager.instance();
  InAppWebViewController? webViewController;
  InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
    crossPlatform: InAppWebViewOptions(
      useShouldOverrideUrlLoading: true,
      mediaPlaybackRequiresUserGesture: false,
    ),
    android: AndroidInAppWebViewOptions(
      useHybridComposition: true,
    ),
    ios: IOSInAppWebViewOptions(
      allowsInlineMediaPlayback: true,
    ),
  );
  late PullToRefreshController pullToRefreshController;
  String url = "";
  RxDouble progress = 0.0.obs;
  RxBool showToTopBtn = false.obs;
  @override
  void onInit() {
    pullToRefreshController = PullToRefreshController(
      options: PullToRefreshOptions(
        color: Colors.blue,
      ),
      onRefresh: () async {
        if (Platform.isAndroid) {
          webViewController?.reload();
        } else if (Platform.isIOS) {
          webViewController?.loadUrl(
              urlRequest: URLRequest(url: await webViewController?.getUrl()));
        }
      },
    );
    super.onInit();
  }

  ///清除cookie
  Future<void> clearCookies() async {
    await cookieManager.deleteCookies(url: Uri.parse(Config.baseUrl));
  }

  ///設置cookie
  Future<void> setWebCookie() async {
    var loginJson = storageManage.read(Config.loginInfo);
    Map<String, dynamic> loginData = jsonDecode(loginJson);
    if (loginData["cookieName"] != "" && loginData["cookieValue"] != "") {
      await webViewController?.evaluateJavascript(
          source:
              'document.cookie = "${loginData["cookieName"]}=${loginData["cookieValue"]}; path=/"');
    }
  }
}
