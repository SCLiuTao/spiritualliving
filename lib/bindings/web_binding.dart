import 'package:get/get.dart';

import '../controller/web_controller.dart';

class WebBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WebController>(
      () => WebController(),
    );
  }
}
