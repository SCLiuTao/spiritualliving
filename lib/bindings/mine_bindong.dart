import 'package:get/get.dart';

import '../controller/mine_controller.dart';

class MineBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MineController>(() => MineController());
  }
}
