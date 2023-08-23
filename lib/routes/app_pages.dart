import 'package:get/get.dart';
import '../bindings/in_app_web_binding.dart';
import '../bindings/signin_binding.dart';

import '../pages/in_app_web_page.dart';
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
  ];
}
