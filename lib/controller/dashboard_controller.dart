import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spiritualliving/routes/app_pages.dart';
import '../common//utils/index.dart';
import '../common/config.dart';

class DashboardController extends GetxController
    with GetTickerProviderStateMixin {
  late TabController tabController;

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
  RxInt currentIndex = 0.obs;

  @override
  void onInit() {
    tabController = TabController(length: tabValues.length, vsync: this);
    tabController.addListener(() {
      currentIndex.value = tabController.index;
    });
    super.onInit();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  ///改变导航index
  changBarIndex({int? index}) {
    if (index == 3 && checkLogged() == false) {
      Get.offAndToNamed(Routes.signin);
    } else {
      tabController.index = index!;
      currentIndex.value = index;
    }
  }

  ///检测是否已登录
  bool checkLogged() {
    final StorageManage storageManage = StorageManage();
    final String? loginInfoJson = storageManage.read(Config.loginInfo);

    if (loginInfoJson != null) {
      var loginInfo = jsonDecode(loginInfoJson);
      if (loginInfo['islogin'] == true) {
        return true;
      }
      return false;
    }
    return false;
  }
}
