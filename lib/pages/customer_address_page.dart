import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import '../common/config.dart';
import '../common/utils/index.dart';
import '../controller/cutomer_address_controller.dart';

class CustomerAddress extends GetView<CustomerAddressController> {
  CustomerAddress({super.key});

  final title = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          title != null ? title["title"] : "",
        ),
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

                          ///国家
                          FormHelper.textInput(
                            controller: controller.country,
                            labelText: "國家 *",
                            textInputAction: TextInputAction.done,
                            onTap: () async {
                              await controller.changeCuntry();
                            },
                            suffixIcon: GetBuilder<CustomerAddressController>(
                              init: CustomerAddressController(),
                              id: "country",
                              initState: (_) {},
                              builder: (_) {
                                return IconButton(
                                    onPressed: () async {
                                      _.country.text.isNotEmpty
                                          ? {
                                              _.country.text = "",
                                              _.countryCode = "",
                                              _.stateCode = "",
                                              _.state.text = "",
                                              _.statesList.clear(),
                                              _.city.text = "",
                                            }
                                          : await _.changeCuntry();
                                    },
                                    icon: _.country.text.isNotEmpty
                                        ? Icon(
                                            Icons.cancel,
                                            size: 20.0,
                                            color: Theme.of(context)
                                                .iconTheme
                                                .color!
                                                .withOpacity(.7),
                                          )
                                        : const Icon(Icons.arrow_drop_down));
                              },
                            ),
                            readOnly: true,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "國家不能為空";
                              }
                              return null;
                            },
                          ),

                          ///省和城市组合
                          GetBuilder<CustomerAddressController>(
                            init: CustomerAddressController(),
                            initState: (_) {},
                            id: "stateCity",
                            builder: (_) {
                              if (_.statesList.isEmpty) {
                                return const SizedBox();
                              }
                              return Column(
                                children: [
                                  ///省
                                  TypeAheadFormField(
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    textFieldConfiguration:
                                        TextFieldConfiguration(
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey[300]!),
                                        ),
                                        hintText: '省/直轄市/自治區 *',
                                        labelText: '省/直轄市/自治區 *',
                                      ),
                                      controller: controller.state,
                                    ),
                                    suggestionsCallback: (pattern) {
                                      return controller.statesList
                                          .where((element) {
                                        String sateCode = element['stateCode'];
                                        String stateName = element['stateName'];
                                        return stateName.contains(pattern) ||
                                            sateCode.contains(pattern);
                                      }).toList();
                                    },
                                    itemBuilder: (context, suggestion) {
                                      return ListTile(
                                        title: Text(suggestion["stateName"]),
                                      );
                                    },
                                    itemSeparatorBuilder: (context, index) {
                                      return const Divider();
                                    },
                                    transitionBuilder:
                                        (context, suggestionsBox, controller) {
                                      return suggestionsBox;
                                    },
                                    onSuggestionSelected: (suggestion) {
                                      log("${[
                                        suggestion["stateCode"],
                                        suggestion["stateName"]
                                      ]}");
                                      controller.stateCode =
                                          suggestion["stateCode"];
                                      controller.state.text =
                                          suggestion["stateName"];
                                    },
                                    suggestionsBoxController:
                                        SuggestionsBoxController(),
                                    validator: (value) =>
                                        value!.isEmpty ? '省/直轄市/自治區' : null,
                                  ),

                                  ///城市
                                  FormHelper.textInput(
                                    controller: controller.city,
                                    labelText: "市",
                                  ),
                                ],
                              );
                            },
                          ),

                          ///地址1
                          FormHelper.textInput(
                            controller: controller.address1,
                            labelText: "地址1 *",
                            keyboardType: TextInputType.streetAddress,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "地址1不能為空";
                              }
                              return null;
                            },
                          ),

                          ///地址2
                          FormHelper.textInput(
                            controller: controller.address2,
                            keyboardType: TextInputType.streetAddress,
                            labelText: "地址2",
                          ),

                          ///郵政編碼
                          FormHelper.textInput(
                            controller: controller.postcode,
                            labelText: "郵政編碼 *",
                            keyboardType:
                                const TextInputType.numberWithOptions(),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "郵政編碼不能為空";
                              }
                              return null;
                            },
                          ),

                          ///電話
                          FormHelper.textInput(
                            controller: controller.phone,
                            keyboardType: TextInputType.phone,
                            labelText: "電話 *",
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "電話不能為空";
                              }
                              return null;
                            },
                          ),

                          ///電郵
                          FormHelper.textInput(
                              controller: controller.email,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.done,
                              labelText: "電郵 *",
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "電郵不能為空";
                                }
                                return null;
                              },
                              onFieldSubmitted: (value) {
                                FocusScope.of(context).unfocus();
                                final currentState =
                                    controller.formKey.currentState;
                                if (currentState!.validate()) {
                                  currentState.save();
                                  controller.formSave();
                                }
                              }),
                          SizedBox(height: Config.space),
                          SizedBox(height: Config.space),

                          ///普通登录
                          FormHelper.submitUIButton(
                            context,
                            title: "存儲地址",
                            textColor: Colors.black87,
                            onTap: () {
                              FocusScope.of(context).unfocus();
                              final currentState =
                                  controller.formKey.currentState;
                              if (currentState!.validate()) {
                                currentState.save();
                                controller.formSave();
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
