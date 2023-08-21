import 'dart:convert';
import 'dart:developer';
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
        userAgent:
            "Mozilla/5.0 (Linux; Android 12; Pixel 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.0.0 Mobile Safari/537.36"),
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
  RxBool logged = false.obs; //控制导航
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
    checkLogged();
    super.onInit();
  }

  ///清除cookie
  Future<void> clearCookies() async {
    await cookieManager.deleteCookies(url: Uri.parse(Config.baseUrl));
  }

  ///設置cookie
  Future<void> setWebCookie() async {
    var loginJson = storageManage.read(Config.loginInfo);
    if (loginJson != null) {
      Map<String, dynamic> loginData = jsonDecode(loginJson);
      if (loginData["islogin"]) {
        if (loginData["cookieName"] != "" && loginData["cookieValue"] != "") {
          await webViewController?.evaluateJavascript(
              source:
                  'document.cookie = "${loginData["cookieName"]}=${loginData["cookieValue"]}; path=/"');
        }
      }
    }
  }

  Future<bool> getCookies() async {
    bool ret = false;
    List<Cookie> cookies =
        await cookieManager.getCookies(url: Uri.parse(Config.baseUrl));
    log("$cookies");
    for (var element in cookies) {
      if (element.name.contains("wordpress_logged_in_")) {
        ret = true;
        break;
      }
    }
    return ret;
  }

  ///检测是否已登录

  checkLogged() {
    final String? loginInfoJson = storageManage.read(Config.loginInfo);
    if (loginInfoJson != null) {
      var loginInfo = jsonDecode(loginInfoJson);
      if (loginInfo['islogin'] == true) {
        logged.value = true;
      }
    }
  }
}
