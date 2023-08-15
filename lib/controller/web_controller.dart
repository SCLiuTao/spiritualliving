import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:webview_flutter/webview_flutter.dart';
import '../common/config.dart';
import '../common/utils/storage_manage.dart';

class WebController extends GetxController with GetTickerProviderStateMixin {
  RxInt currentIndex = 0.obs;
  late final WebViewController webViewController;
  RxBool showToTopBtn = false.obs;
  RxBool isloading = true.obs;
  final StorageManage storageManage = StorageManage();
  final cookieManager = WebViewCookieManager();
  @override
  void onInit() {
    //setWebCookie();
    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setUserAgent("flutter app")
      ..setNavigationDelegate(NavigationDelegate(
        onProgress: (int progress) {},
        onPageStarted: (String url) async {
          showToTopBtn.value = false;
          isloading.value = true;
          await setWebCookie();
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
  Future<void> setWebCookie() async {
    var loginJson = storageManage.read(Config.loginInfo);
    Map<String, dynamic> loginData = jsonDecode(loginJson);
    if (loginData["cookieName"] != "" && loginData["cookieValue"] != "") {
      await webViewController.runJavaScript(
          'document.cookie = "${loginData["cookieName"]}=${loginData["cookieValue"]}; path=/"');
    }
  }

  ///刪除cookie
  deleteAllCookies() async {
    await cookieManager.clearCookies();
  }
}
