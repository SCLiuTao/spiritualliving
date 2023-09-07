import 'dart:convert';

import 'package:get/get.dart';
import 'package:spiritualliving/routes/app_pages.dart';
import '../common/config.dart';
import '../common/serivce/api_client.dart';
import '../common/utils/index.dart';

class MineController extends GetxController {
  final StorageManage storageManage = StorageManage();

  Map<String, dynamic>? loginInfo;
  @override
  void onInit() {
    final String? loginInfoJson = storageManage.read(Config.loginInfo);
    if (loginInfoJson != null) {
      loginInfo = jsonDecode(loginInfoJson);
    }
    super.onInit();
  }

  Future<void> loginOut() async {
    loginInfo!['islogin'] = false;
    storageManage.save(Config.loginInfo, jsonEncode(loginInfo));
    Get.offAllNamed(Routes.dashboard);
  }

  Future<void> deleteAccount() async {
    loginInfo!['islogin'] = false;
    storageManage.save(Config.loginInfo, jsonEncode(loginInfo));
    final ApiClient apiClient = ApiClient();
    apiClient.post(
        path: Config.loginUrl,
        data: {"loginType": "delAccount", "userID": loginInfo!["userID"]});
    Get.offAllNamed(Routes.dashboard);
  }
}
