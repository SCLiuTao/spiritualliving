import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spiritualliving/common/utils/storage_manage.dart';
import 'package:webview_cookie_manager/webview_cookie_manager.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../common/config.dart';

class WebController extends GetxController with GetTickerProviderStateMixin {
  RxInt currentIndex = 0.obs;
  late final WebViewController webViewController;
  RxBool showToTopBtn = false.obs;
  RxBool isloading = true.obs;
  final StorageManage storageManage = StorageManage();
  final cookieManager = WebviewCookieManager();
  @override
  void onInit() {
    setWebCookie();
    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setUserAgent("flutter app")
      ..setNavigationDelegate(NavigationDelegate(
        onProgress: (int progress) {},
        onPageStarted: (String url) {
          isloading.value = true;
          checkLoginCookie();
        },
        onPageFinished: (String url) async {
          isloading.value = false;
          webViewController.runJavaScript(
              'document.getElementsByClassName("elementor-widget-heading")[0].style.display="none";');
        },
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          return NavigationDecision.navigate;
        },
        onUrlChange: (UrlChange change) {
          debugPrint('url change to ${change.url}');
        },
      ))
      ..loadRequest(Uri.parse(Config.baseUrl));
    super.onInit();
  }

  ///設置cookie
  void setWebCookie() async {
    var loginJson = storageManage.read(Config.loginInfo);
    Map<String, dynamic> loginData = jsonDecode(loginJson);
    if (loginData["cookieName"] != "" && loginData["cookieValue"] != "") {
      await cookieManager.setCookies(
        [
          Cookie(loginData["cookieName"], loginData["cookieValue"])
            ..domain = Config.domain
            ..httpOnly = false
        ],
      );
    }
  }

  ///刪除cookie
  Future<void> deleteAllCookies() async {
    await cookieManager.clearCookies();
  }

  ///检测登录cookie
  void checkLoginCookie() async {
    final allCookie = await cookieManager.getCookies(Config.domain);
    bool hasCookie = false;
    for (var element in allCookie) {
      if (element.name.contains("wordpress_logged_in")) {
        hasCookie = true;
        break;
      }
    }
    if (!hasCookie) {
      setWebCookie();
    }
  }
}
