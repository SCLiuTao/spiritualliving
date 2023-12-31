import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import '../common/config.dart';
import '../common/utils/form_help.dart';
import '../controller/sign_in_controller.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});
  final signInCtl = Get.put(SignInController());
  @override
  Widget build(BuildContext context) {
    final paddingTop = MediaQuery.of(context).padding.top;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        padding: EdgeInsets.only(
          top: paddingTop,
          left: Get.width * 0.04,
          right: Get.width * 0.04,
        ),
        width: double.infinity,
        height: double.infinity,
        child: Form(
          key: signInCtl.formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SlideTransition(
                  position: Tween(begin: Offset.zero, end: const Offset(0, .1))
                      .chain(CurveTween(curve: Curves.linear))
                      .animate(signInCtl.animationController),
                  child: Container(
                      alignment: Alignment.center,
                      constraints: const BoxConstraints(
                          maxHeight: 200.0, minHeight: 150.0),
                      child: Shimmer.fromColors(
                        baseColor:
                            const Color.fromARGB(255, 46, 37, 88).withGreen(20),
                        highlightColor: Colors.orangeAccent,
                        child: Text(
                          "登錄",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(
                                fontWeight: FontWeight.w600,
                                letterSpacing: 8,
                              ),
                        ),
                      )
                      //Image.asset("assets/splash.png"),
                      ),
                ),
                const SizedBox(
                  height: 20,
                ),
                AnimationLimiter(
                  child: Column(
                    children: AnimationConfiguration.toStaggeredList(
                      duration: const Duration(milliseconds: 375),
                      childAnimationBuilder: (widget) => SlideAnimation(
                        horizontalOffset: MediaQuery.of(context).size.width / 2,
                        child: FadeInAnimation(child: widget),
                      ),
                      children: [
                        ///用戶名或郵箱
                        FormHelper.textInput(
                          controller: signInCtl.nameCtl,
                          labelText: "用戶名或郵箱",
                          icon: Icons.person,
                          keyboardType: TextInputType.visiblePassword,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "用戶名或郵箱不能為空";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: Config.space),

                        ///密码
                        Obx(() => FormHelper.textInput(
                            controller: signInCtl.pwdCtl,
                            icon: Icons.lock_outline,
                            labelText: "密碼",
                            keyboardType: TextInputType.visiblePassword,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return '密碼不能為空';
                              }
                              return null;
                            },
                            obscureText: signInCtl.isShowPassword.value,
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: IconButton(
                                icon: signInCtl.isShowPassword.value
                                    ? const Icon(Icons.visibility)
                                    : const Icon(Icons.visibility_off),
                                onPressed: () {
                                  signInCtl.isShowPassword.value =
                                      !signInCtl.isShowPassword.value;
                                },
                              ),
                            ))),

                        SizedBox(height: Config.space),

                        ///普通登录
                        FormHelper.submitUIButton(
                          context,
                          title: "賬號密碼登錄",
                          icon: const Icon(Icons.email),
                          textColor: Colors.black87,
                          color: Colors.green,
                          onTap: () {
                            FocusScope.of(context).unfocus();
                            var currentState = signInCtl.formkey.currentState;
                            if (currentState!.validate()) {
                              signInCtl.handleSignIn(loginType: "normal");
                            }
                          },
                        ),

                        ///谷歌登录
                        FormHelper.submitUIButton(
                          context,
                          title: "Google登錄",
                          icon: ColorFiltered(
                            colorFilter: const ColorFilter.mode(
                                Colors.white, BlendMode.modulate),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(28),
                              clipBehavior: Clip.antiAlias,
                              child: const Image(
                                image: AssetImage("assets/google.png"),
                                height: 30.0,
                                width: 30.0,
                              ),
                            ),
                          ),
                          color: const Color.fromARGB(255, 175, 106, 2),
                          onTap: () async {
                            signInCtl.handleSignIn(loginType: "google");
                          },
                        ),

                        ///脸书登录
                        FormHelper.submitUIButton(
                          context,
                          title: "Facebook登錄",
                          icon: ColorFiltered(
                            colorFilter: const ColorFilter.mode(
                                Colors.white, BlendMode.srcIn),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(28),
                              clipBehavior: Clip.antiAlias,
                              child: const Image(
                                image: AssetImage("assets/facebook.png"),
                                height: 30.0,
                                width: 30.0,
                              ),
                            ),
                          ),
                          color: const Color.fromARGB(255, 52, 6, 138),
                          onTap: () async {
                            signInCtl.handleSignIn(loginType: "facebook");
                          },
                        ),

                        ///IOS Apple ID登录

                        FormHelper.submitUIButton(
                          context,
                          title: "Apple登錄",
                          icon: ColorFiltered(
                            colorFilter: const ColorFilter.mode(
                                Colors.white, BlendMode.srcIn),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(28),
                              clipBehavior: Clip.hardEdge,
                              child: const Image(
                                image: AssetImage("assets/apple.png"),
                                height: 30.0,
                                width: 30.0,
                              ),
                            ),
                          ),
                          color: Colors.black87,
                          onTap: () async {
                            signInCtl.handleSignIn(loginType: "apple");
                          },
                        ),

                        FormHelper.submitUIButton(
                          context,
                          title: "Twitter登錄",
                          icon: ColorFiltered(
                            colorFilter: const ColorFilter.mode(
                                Colors.white, BlendMode.srcIn),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(28),
                              clipBehavior: Clip.hardEdge,
                              child: const Image(
                                image: AssetImage("assets/twitter.png"),
                                height: 30.0,
                                width: 30.0,
                              ),
                            ),
                          ),
                          color: const Color.fromARGB(255, 3, 109, 148),
                          onTap: () async {
                            signInCtl.handleSignIn(loginType: "twitter");
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
