import 'package:get/get.dart';

import '../controller/in_app_web_controller.dart';

class InAppwebBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InAppController>(() => InAppController());
  }
}
