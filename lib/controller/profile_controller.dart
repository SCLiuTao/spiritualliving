import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spiritualliving/common/models/user_meta_model.dart';
import '../common/config.dart';
import '../common/serivce/api_client.dart';
import '../common/utils/index.dart';

class ProfileController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final StorageManage storageManage = StorageManage();
  final TextEditingController firtName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController displayName = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController currentPwd = TextEditingController();
  final TextEditingController newPwd = TextEditingController();
  final TextEditingController comfirePwd = TextEditingController();
  final ApiClient apiClient = ApiClient();

  RxBool isloading = true.obs;

  @override
  void onInit() {
    getUserInfo();
    super.onInit();
  }

  @override
  void onClose() {
    firtName.dispose();
    lastName.dispose();
    displayName.dispose();
    email.dispose();
    currentPwd.dispose();
    newPwd.dispose();
    comfirePwd.dispose();
    super.onClose();
  }

  //获取登录信息
  Map getLogininfo() {
    final String loginInfoJson = storageManage.read(Config.loginInfo);
    return jsonDecode(loginInfoJson);
  }

  //獲取用戶信息
  void getUserInfo() async {
    isloading.value = true;
    try {
      var ret = await apiClient.post(path: Config.mine, data: {
        "userID": getLogininfo()["userID"],
        "type": "getUserInfo",
      });
      if (ret != null) {
        try {
          UserMetaMedel userMetaData = UserMetaMedel.fromJson(jsonDecode(ret));
          firtName.text = userMetaData.userdata!.firstName!;
          lastName.text = userMetaData.userdata!.lastName!;
          displayName.text = userMetaData.userdata!.displayName!;
          email.text = userMetaData.userdata!.userEmail!;
        } finally {
          isloading.value = false;
        }
      }
    } finally {
      isloading.value = false;
    }
  }

  ///保存用戶信息

  Future<void> savaUserInfo() async {
    showloading("存儲成功中,請稍後...");
    Map<String, dynamic> userData = {
      "first_name": firtName.text,
      "last_name": lastName.text,
      "display_name": displayName.text,
      "user_email": email.text,
      "currentPwd": currentPwd.text,
      "newPwd": newPwd.text,
      "userID": getLogininfo()["userID"],
      "type": "updateUserInfo",
    };
    try {
      var response = await apiClient.post(path: Config.mine, data: userData);
      //log("${response.runtimeType}");
      if (response != null) {
        final Map ret = jsonDecode(response);
        //code 201:原密碼錯誤 200更新成功
        if (ret['code'] == 200) {
          showSuccess("存儲成功", showTime: 1);
          Future.delayed(const Duration(seconds: 1), () => Get.back());
        }
        if (ret['code'] == 201) {
          showError("原密碼錯誤");
        }
      } else {
        showError("存儲失敗");
      }
    } catch (e) {
      showError("網絡異常");
    }
  }
}
