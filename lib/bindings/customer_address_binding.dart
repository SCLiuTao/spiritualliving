import 'package:get/get.dart';

import '../controller/cutomer_address_controller.dart';

class CustomerAddressBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerAddressController>(() => CustomerAddressController());
  }
}
