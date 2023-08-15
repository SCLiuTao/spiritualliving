import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';

import '../common/config.dart';
import '../common/style/style.dart';
import '../common/utils/form_help.dart';
import '../controller/sign_in_controller.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});
  final signInCtl = Get.find<SignInController>();
  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   signInCtl.checkLogin();
    // });
    final paddingTop = MediaQuery.of(context).padding.top;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        padding: EdgeInsets.only(
          top: paddingTop,
          left: Get.width * 0.08,
          right: Get.width * 0.08,
        ),
        decoration: boxLinear,
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
                      constraints: const BoxConstraints(maxHeight: 200.0),
                      child: Image.asset("assets/splash.png")),
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
                                color: Colors.white70,
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
                          //color: Colors.grey[600],
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
                          color: const Color.fromARGB(66, 18, 7, 170),
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
                        ActionChip(
                          label: const Icon(Icons.twelve_mp_rounded),
                          avatar: const Text("推特"),
                          onPressed: () async {
                            var ret = await signInCtl.signInWithTwitter();
                           

                            print("======>${[ret.user!.email,ret.user!.displayName]}");
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
