import 'package:get/get.dart';
import 'package:spiritualliving/pages/web_page.dart';
import '../bindings/web_binding.dart';
import '../bindings/signin_binding.dart';

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
      name: Routes.webpage,
      page: () => WebPage(),
      binding: HomeBinding(),
    ),
  ];
}
