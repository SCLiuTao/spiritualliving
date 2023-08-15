import 'dart:convert';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:spiritualliving/common/serivce/api_client.dart';
import 'package:spiritualliving/common/utils/easy_toast.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../common/config.dart';
import '../common/style/style.dart';
import '../common/utils/storage_manage.dart';
import '../controller/web_controller.dart';
import '../routes/app_pages.dart';

class WebPage extends GetView<WebController> {
  WebPage({super.key});
  final webCtl = Get.put(WebController());
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
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Stack(children: [
        Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(tabValues[webCtl.currentIndex.value].label),
            actions: [_buildSetView()],
          ),
          floatingActionButton: Obx(() => Visibility(
                visible: webCtl.showToTopBtn.value,
                child: FloatingActionButton(
                  onPressed: () {
                    webCtl.webViewController.scrollTo(0, 0);
                    webCtl.showToTopBtn.value = false;
                  },
                  backgroundColor: Colors.grey[900],
                  child: const Icon(
                    Icons.arrow_upward,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              )),
          body: SafeArea(
            child: Container(
              decoration: boxLinear,
              child: _buildWebview(),
            ),
          ),
          bottomNavigationBar: Obx(
            () => NavigationBar(
              backgroundColor: const Color.fromARGB(255, 141, 63, 155),
              selectedIndex: webCtl.currentIndex.value,
              indicatorColor: Colors.green,
              destinations: tabValues,
              onDestinationSelected: (index) async {
                if (index != webCtl.currentIndex.value) {
                  await webCtl.setWebCookie();
                  if (index == 0) {
                    webCtl.webViewController
                        .loadRequest(Uri.parse(Config.homeUrl));
                  } else if (index == 1) {
                    webCtl.webViewController
                        .loadRequest(Uri.parse(Config.shopUrl));
                  } else if (index == 2) {
                    webCtl.webViewController
                        .loadRequest(Uri.parse(Config.cartUrl));
                  } else if (index == 3) {
                    webCtl.webViewController
                        .loadRequest(Uri.parse(Config.persionUrl));
                  }
                }
                webCtl.currentIndex.value = index;
              },
            ),
          ),
        ),
        Obx(() => webCtl.isloading.value
            ? SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  children: [
                    ModalBarrier(dismissible: false, color: Colors.grey[400]!),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SpinKitFadingCube(
                            color: Colors.orange,
                            size: 50.0,
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                          Shimmer.fromColors(
                            baseColor: Colors.grey[600]!,
                            highlightColor: Colors.orangeAccent,
                            child: const Text(
                              "精彩即將呈現",
                              style: TextStyle(fontSize: 25.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            : Container()),
      ]),
    );
  }

  ///設置視圖
  Widget _buildSetView() {
    return PopupMenuButton(
      color: Colors.grey[900],
      icon: const Icon(
        Icons.settings,
        color: Colors.white,
      ),
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<String>>[
          PopupMenuItem<String>(
            value: 'logout',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.logout,
                  color: Colors.red,
                ),
                Text(
                  '登出',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          ),
          PopupMenuItem<String>(
            value: 'delAccount',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.power_settings_new,
                  color: Colors.redAccent,
                ),
                Text(
                  '注銷',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          )
        ];
      },
      onSelected: (value) async {
        final StorageManage storageManage = StorageManage();
        var loginInfo = jsonDecode(storageManage.read(Config.loginInfo));
        webCtl.deleteAllCookies();
        loginInfo['islogin'] = false;
        storageManage.save(Config.loginInfo, jsonEncode(loginInfo));

        if (value == "delAccount") {
          final ApiClient apiClient = ApiClient();
          apiClient.post(
              path: Config.loginUrl,
              data: {"loginType": "delAccount", "userID": loginInfo["userID"]});
        }
        Get.offNamed(Routes.signin);
      },
    );
  }

  ///webview視圖
  Widget _buildWebview() {
    return CupertinoScrollbar(
      child: Listener(
        onPointerDown: (PointerDownEvent pointerDownEvent) {
          webCtl.webViewController.getScrollPosition().then((value) {
            if (value.dy > 300) {
              webCtl.showToTopBtn.value = true;
            } else {
              webCtl.showToTopBtn.value = false;
            }
          });
        },
        child: WebViewWidget(
          controller: controller.webViewController,
          gestureRecognizers: {
            Factory<VerticalDragGestureRecognizer>(
                () => VerticalDragGestureRecognizer()
                  ..onDown = (DragDownDetails dragDownDetails) {
                    webCtl.webViewController.getScrollPosition().then((value) {
                      if (value.dy == 0 &&
                          dragDownDetails.globalPosition.direction < 1) {
                        showToast("Refreshing...");
                        webCtl.showToTopBtn.value = false;
                        webCtl.webViewController.reload();
                      }
                    });
                  }),
          },
        ),
      ),
    );
  }
}
