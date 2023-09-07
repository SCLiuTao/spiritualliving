import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import '../common/config.dart';
import '../common/utils/index.dart';
import '../controller/profile_controller.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('帳戶詳細資料'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SafeArea(
            bottom: false,
            child: Container(
              padding: EdgeInsets.all(Config.space),
              child: AnimationLimiter(
                child: SingleChildScrollView(
                  child: Form(
                    key: controller.formKey,
                    child: Column(
                      children: AnimationConfiguration.toStaggeredList(
                        duration: const Duration(milliseconds: 375),
                        childAnimationBuilder: (widget) => SlideAnimation(
                          horizontalOffset:
                              MediaQuery.of(context).size.width / 2,
                          child: FadeInAnimation(child: widget),
                        ),
                        children: [
                          Row(
                            children: [
                              ///名字 *
                              Flexible(
                                child: FormHelper.textInput(
                                  controller: controller.firtName,
                                  labelText: "名字 *",
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "名字不能為空";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(
                                width: Config.space,
                              ),

                              ///姓氏
                              Flexible(
                                child: FormHelper.textInput(
                                  controller: controller.lastName,
                                  labelText: "姓氏 *",
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "姓氏不能為空";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),

                          ///顯示名稱
                          FormHelper.textInput(
                            controller: controller.displayName,
                            labelText: "顯示名稱 *",
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "顯示名稱不能為空";
                              }
                              return null;
                            },
                          ),

                          ///电邮
                          FormHelper.textInput(
                            controller: controller.email,
                            keyboardType: TextInputType.emailAddress,
                            labelText: "电邮 *",
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "电邮不能為空";
                              }
                              return null;
                            },
                          ),

                          ///目前的密碼
                          FormHelper.textInput(
                              controller: controller.currentPwd,
                              labelText: "目前的密碼(不需變更請留空)",
                              keyboardType: TextInputType.visiblePassword),

                          ///新密碼(不需變更請留空)
                          FormHelper.textInput(
                            controller: controller.newPwd,
                            keyboardType: TextInputType.phone,
                            labelText: "新密碼(不需變更請留空)",
                          ),

                          ///確認新密碼
                          FormHelper.textInput(
                              controller: controller.comfirePwd,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.done,
                              labelText: "確認新密碼",
                              validator: (value) {
                                String newPwd = controller.newPwd.text;
                                String comfirePwd = controller.comfirePwd.text;
                                String currentPwd = controller.currentPwd.text;
                                if (newPwd.isNotEmpty ||
                                    comfirePwd.isNotEmpty) {
                                  if (newPwd != comfirePwd) {
                                    return "新密碼與確認密碼不一致";
                                  }
                                  if (currentPwd.isEmpty) {
                                    return "原密碼為能為空";
                                  }
                                  return null;
                                }
                                return null;
                              },
                              onFieldSubmitted: (value) {
                                log("message");
                              }),
                          SizedBox(height: Config.space),
                          SizedBox(height: Config.space),

                          ///普通登录
                          FormHelper.submitUIButton(
                            context,
                            title: "存儲設定",
                            textColor: Colors.black87,
                            onTap: () {
                              FocusScope.of(context).unfocus();
                              final currentState =
                                  controller.formKey.currentState;
                              if (currentState!.validate()) {
                                currentState.save();
                                controller.savaUserInfo();
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Obx(() =>
              controller.isloading.value ? threeInOutWiget() : const SizedBox())
        ],
      ),
    );
  }
}
