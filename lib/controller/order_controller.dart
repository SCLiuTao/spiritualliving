import 'dart:convert';

import 'package:easy_refresh/easy_refresh.dart';
import 'package:get/get.dart';
import 'package:spiritualliving/common/models/orders_model.dart';

import '../common/config.dart';
import '../common/serivce/api_client.dart';
import '../common/utils/index.dart';

class OrderController extends GetxController {
  final ApiClient apiClient = ApiClient();
  final StorageManage storageManage = StorageManage();
  RxBool isloading = true.obs;
  int currentPage = 1;
  List<OrdersModel>? orders = [];
  late EasyRefreshController easyRefreshController;
  bool noMore = false;
  @override
  void onInit() {
    easyRefreshController = EasyRefreshController(
      controlFinishRefresh: true,
      controlFinishLoad: true,
    );
    getOrders();
    super.onInit();
  }

  @override
  void onClose() {
    easyRefreshController.dispose();
    super.onClose();
  }

  //获取用户信息
  Future<void> getOrders() async {
    isloading.value = true;
    try {
      var ret = await apiClient.post(path: Config.mine, data: {
        "userID": getLogininfo()["userID"],
        "page": currentPage,
        "type": "getOrders",
      });
      if (ret != null) {
        try {
          orders = List<OrdersModel>.from(
              json.decode(ret).map((x) => OrdersModel.fromJson(x)));
        } finally {
          isloading.value = false;
        }
      }
    } finally {
      isloading.value = false;
    }
  }

  //获取登录信息
  Map getLogininfo() {
    final String loginInfoJson = storageManage.read(Config.loginInfo);
    return jsonDecode(loginInfoJson);
  }

  ///上拉加载更多
  Future<void> pullToLoad() async {
    currentPage++;
    try {
      var ret = await apiClient.post(path: Config.mine, data: {
        "userID": getLogininfo()["userID"],
        "page": currentPage,
        "type": "getOrders",
      });
      if (ret != null) {
        try {
          var temp = List<OrdersModel>.from(
              json.decode(ret).map((x) => OrdersModel.fromJson(x)));
          if (temp.isNotEmpty) {
            orders!.addAll(temp);
          } else {
            noMore = true;
          }
        } finally {
          update(['content']);
        }
      }
    } finally {
      update(['content']);
    }
  }

  ///下拉刷新
  void pullToRefresh() async {
    noMore = false;
    currentPage = 1;
    orders!.clear();
    update(['content']);
    try {
      var ret = await apiClient.post(path: Config.mine, data: {
        "userID": getLogininfo()["userID"],
        "page": currentPage,
        "type": "getOrders",
      });
      if (ret != null) {
        try {
          var temp = List<OrdersModel>.from(
              json.decode(ret).map((x) => OrdersModel.fromJson(x)));
          if (temp.isNotEmpty) {
            orders!.addAll(temp);
          }
        } finally {
          update(['content']);
        }
      }
    } finally {
      update(['content']);
    }
  }
}
