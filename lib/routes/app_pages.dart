import 'package:get/get.dart';
import '../bindings/customer_address_binding.dart';
import '../bindings/dashboard_binding.dart';
import '../bindings/in_app_web_binding.dart';
import '../bindings/mine_bindong.dart';
import '../bindings/order_binding.dart';
import '../bindings/profile_binding.dart';
import '../bindings/signin_binding.dart';

import '../pages/customer_address_page.dart';
import '../pages/dashboard_page.dart';
import '../pages/in_app_web_page.dart';
import '../pages/mine_page.dart';
import '../pages/order_page.dart';
import '../pages/profile_page.dart';
import '../pages/sign_in_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: Routes.signin,
      page: () => SignIn(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: Routes.inAppWeb,
      page: () => InAppWebpage(),
      binding: InAppwebBinding(),
    ),
    GetPage(
      name: Routes.mine,
      page: () => Mine(),
      binding: MineBinding(),
    ),
    GetPage(
      name: Routes.dashboard,
      page: () => Dashboard(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: Routes.customerAddress,
      page: () => CustomerAddress(),
      binding: CustomerAddressBinding(),
    ),
    GetPage(
      name: Routes.profile,
      page: () => const ProfilePage(),
      binding: ProfileBinding(),
    ),
    GetPage(
        name: Routes.order,
        page: () => const OrderPage(),
        binding: OrderBinding()),
  ];
}
