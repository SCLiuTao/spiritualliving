import 'package:get/get.dart';

import '../bindings/in_app_web_binding.dart';
import '../bindings/mine_bindong.dart';
import '../bindings/signin_binding.dart';

import '../pages/in_app_web_page.dart';
import '../pages/mine_page.dart';
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
      page: () => const Mine(),
      binding: MineBinding(),
    ),
  ];
}
