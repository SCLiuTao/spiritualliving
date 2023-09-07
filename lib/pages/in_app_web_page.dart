import 'dart:convert';
import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import '../common/config.dart';
import '../common/utils/index.dart';
import '../controller/in_app_web_controller.dart';
import '../routes/app_pages.dart';

class InAppWebpage extends StatelessWidget {
  final String? requerstUrl;
  InAppWebpage({super.key, this.requerstUrl});
  final inAppWebCtl = Get.put(InAppController());
  final List<NavigationDestination> tabValues = [
    const NavigationDestination(
      label: '首頁',
      icon: Icon(
        Icons.home,
      ),
    ),
    const NavigationDestination(
      label: '商店',
      icon: Icon(Icons.shop),
    ),
    const NavigationDestination(
      label: '購物車',
      icon: Icon(Icons.shopping_cart),
    ),
    const NavigationDestination(
      label: '個人中心',
      icon: Icon(Icons.person),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    log(requerstUrl!);
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Stack(
        children: [
          _mainBuildView(),
          _buildLoadingView(),
        ],
      ),
    );
  }

  //主视图
  Widget _mainBuildView() {
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   title: Obx(() => Text(tabValues[inAppWebCtl.currentIndex.value].label)),
      //   actions: [
      //     Obx(() => inAppWebCtl.logged.value ? _buildSetView() : Container())
      //   ],
      // ),
      floatingActionButton: Obx(
        () => Visibility(
          visible: inAppWebCtl.showToTopBtn.value,
          child: FloatingActionButton(
            onPressed: () {
              inAppWebCtl.webViewController!.scrollTo(x: 0, y: 0);
              inAppWebCtl.showToTopBtn.value = false;
            },
            backgroundColor: Colors.grey[900],
            child: const Icon(
              Icons.arrow_upward,
              color: Colors.white,
              size: 35,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: _buildWebview(),
      ),
      //bottomNavigationBar: _buildNavigationBar(),
    );
  }

  ///webview視圖
  Widget _buildWebview() {
    return InAppWebView(
      key: Get.nestedKey("$requerstUrl"),
      initialUrlRequest: URLRequest(url: Uri.parse(requerstUrl!)),
      gestureRecognizers: {
        Factory<VerticalDragGestureRecognizer>(
            () => VerticalDragGestureRecognizer())
      },
      initialOptions: inAppWebCtl.options,
      pullToRefreshController: inAppWebCtl.pullToRefreshController,
      onWebViewCreated: (controller) {
        inAppWebCtl.webViewController = controller;
      },
      onLoadStart: (controller, url) {
        inAppWebCtl.showToTopBtn.value = false;

        //log("加载完成：$url");
      },
      androidOnPermissionRequest: (controller, origin, resources) async {
        return PermissionRequestResponse(
            resources: resources,
            action: PermissionRequestResponseAction.GRANT);
      },
      shouldOverrideUrlLoading: (controller, navigationAction) async {
        var uri = navigationAction.request.url!;
        if (uri.path.contains("logout")) {
          final StorageManage storageManage = StorageManage();
          final String? loginInfoJson = storageManage.read(Config.loginInfo);
          if (loginInfoJson != null) {
            var loginInfo = jsonDecode(loginInfoJson);
            loginInfo['islogin'] = false;
            storageManage.save(Config.loginInfo, jsonEncode(loginInfo));
          }
          inAppWebCtl.clearCookies().then((value) {
            inAppWebCtl.currentIndex.value = 0;
            inAppWebCtl.webViewController!.loadUrl(
                urlRequest: URLRequest(url: Uri.parse(Config.homeUrl)));
            inAppWebCtl.logged.value = false;
          });

          return NavigationActionPolicy.CANCEL;
        }

        if (uri.path.contains("my-account")) {
          bool ret = await inAppWebCtl.getCookies();

          if (ret == false) {
            final StorageManage storageManage = StorageManage();
            final String? loginInfoJson = storageManage.read(Config.loginInfo);
            if (loginInfoJson != null) {
              var loginInfo = jsonDecode(loginInfoJson);
              loginInfo['islogin'] = false;
              storageManage.save(Config.loginInfo, jsonEncode(loginInfo));
            }
            Get.offAndToNamed(Routes.signin);
            return NavigationActionPolicy.CANCEL;
          }
        }
        return NavigationActionPolicy.ALLOW;
      },
      onLoadStop: (controller, url) async {
        inAppWebCtl.pullToRefreshController.endRefreshing();
      },
      onLoadError: (controller, url, code, message) {
        log(message);
        inAppWebCtl.showToTopBtn.value = false;
        inAppWebCtl.progress.value = 1.0;
        inAppWebCtl.pullToRefreshController.endRefreshing();
        // iosDialog(
        //     context: Get.context!,
        //     content: "加載出錯,是否重新加載",
        //     confirm: () {
        //       Get.back();
        //       inAppWebCtl.webViewController!.reload();
        //     },
        //     candel: () {
        //       Get.back();
        //       Get.offAndToNamed(Routes.signin);
        //     });
      },
      onProgressChanged: (controller, progress) {
        inAppWebCtl.progress.value = progress / 100;
        if (progress == 100) {
          inAppWebCtl.setWebCookie();
          inAppWebCtl.pullToRefreshController.endRefreshing();
          inAppWebCtl.webViewController!.evaluateJavascript(
              source:
                  'document.getElementsByClassName("elementor-widget-heading")[0].style.display="none";');
        }
        //log("加载进度：${progress / 100}");
      },
      onUpdateVisitedHistory: (controller, url, androidIsReload) {},
      onConsoleMessage: (controller, consoleMessage) {},
      onScrollChanged: (controller, x, y) {
        //log("滑动位置：${[x, y]}");
        if (y > 500) {
          inAppWebCtl.showToTopBtn.value = true;
        } else {
          inAppWebCtl.showToTopBtn.value = false;
        }
      },
    );
  }

  ///加载视图
  Widget _buildLoadingView() {
    return Obx(
      () => inAppWebCtl.progress.value < 1.0 ? spinkitWiget() : Container(),
    );
  }
}
