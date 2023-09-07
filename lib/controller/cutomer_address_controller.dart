import 'dart:convert';

import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:get/get.dart';
import 'package:spiritualliving/common/models/customer_address_model.dart';

import '../common/config.dart';
import '../common/serivce/api_client.dart';
import '../common/utils/index.dart';
import '../common/models/country_states_model.dart';

class CustomerAddressController extends GetxController {
  final StorageManage storageManage = StorageManage();
  TextEditingController firtName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController address1 = TextEditingController();
  TextEditingController address2 = TextEditingController();
  TextEditingController postcode = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  final FocusNode countryNode = FocusNode();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late final FlCountryCodePicker countryPicker;
  List statesList = [];
  final ApiClient apiClient = ApiClient();

  ///国家编号
  String? countryCode = "";

  ///省或州编号
  String? stateCode = "";
  final arguments = Get.arguments;

  RxBool isloading = true.obs;

  @override
  void onInit() {
    getUserMeta();
    countryPicker = const FlCountryCodePicker(
      countryTextStyle: TextStyle(
        color: Colors.red,
        fontSize: 16,
      ),
      dialCodeTextStyle: TextStyle(color: Colors.green, fontSize: 16),
    );
    country.addListener(() {
      update(['country']);
    });
    super.onInit();
  }

  @override
  void onClose() {
    country.dispose();
    state.dispose();
    city.dispose();
    firtName.dispose();
    lastName.dispose();
    address1.dispose();
    address2.dispose();
    postcode.dispose();
    email.dispose();
    phone.dispose();
    super.onClose();
  }

  ///获得国家编号与名称
  Future<void> changeCuntry() async {
    state.text = "";
    city.text = "";
    final code = await countryPicker.showPicker(
      initialSelectedLocale: countryCode,
      context: Get.context!,
    );
    if (code != null) {
      country.text = code.localize(Get.context!).name;
      countryCode = code.code;
      getStates();
    }
  }

  ///获取省州或区
  Future<void> getStates() async {
    statesList.clear();
    var tempCountryCode = countryCode!.toLowerCase();
    if (tempCountryCode.isNotEmpty) {
      var statesJson = await rootBundle
          .loadString("assets/country_states_json/zh-hans.json");
      CountryState countryState = countryStateFromJson(statesJson);
      var states = countryState.toJson()[tempCountryCode.toUpperCase()];
      if (states is Map) {
        statesList = states.entries.map((e) {
          if (stateCode != "" && stateCode == e.key) {
            state.text = e.value;
          }
          return {"stateCode": e.key, "stateName": e.value};
        }).toList();
      }
    }

    update(["stateCity"]);
  }

  void formSave() async {
    showloading("存儲成功中,請稍後...");
    Map<String, dynamic> saveData = {
      arguments["type"] + "_first_name": firtName.text,
      arguments["type"] + "_last_name": lastName.text,
      arguments["type"] + "_country": countryCode,
      arguments["type"] + "_state": stateCode,
      arguments["type"] + "_city": city.text,
      arguments["type"] + "_address_1": address1.text,
      arguments["type"] + "_address_2": address2.text,
      arguments["type"] + "_postcode": postcode.text,
      arguments["type"] + "_phone": phone.text,
      arguments["type"] + "_email": email.text,
      "userID": getLogininfo()["userID"],
      "type": "address",
    };
    var response = await apiClient.post(path: Config.mine, data: saveData);
    if (response != null) {
      final Map ret = jsonDecode(response);
      if (ret['code'] == 200) {
        showSuccess("存儲成功", showTime: 1);
        Future.delayed(const Duration(seconds: 1), () => Get.back());
      }
    } else {
      showError("存儲失敗");
    }
  }

  //获取登录信息
  Map getLogininfo() {
    final String loginInfoJson = storageManage.read(Config.loginInfo);
    return jsonDecode(loginInfoJson);
  }

  //获取用户信息
  getUserMeta() async {
    isloading.value = true;
    try {
      var ret = await apiClient.post(path: Config.mine, data: {
        "userID": getLogininfo()["userID"],
        "type": "getUserMeta",
      });
      if (ret != null) {
        CustomerAddressModel customerAddressModel =
            CustomerAddressModel.fromJson(jsonDecode(ret));
        if (customerAddressModel.code == 200) {
          UserMetaData? userMetaData = customerAddressModel.userMetaData;
          firtName.text = arguments["type"] == "billing"
              ? userMetaData?.billingFirstName ?? ""
              : userMetaData?.shippingFirstName ?? "";
          lastName.text = arguments["type"] == "billing"
              ? userMetaData?.billingLastName ?? ""
              : userMetaData?.shippingLastName ?? "";
          countryCode = arguments["type"] == "billing"
              ? userMetaData?.billingCountry ?? ""
              : userMetaData?.shippingCountry ?? "";
          stateCode = arguments["type"] == "billing"
              ? userMetaData?.billingState ?? ""
              : userMetaData?.shippingState ?? "";
          city.text = arguments["type"] == "billing"
              ? userMetaData?.billingCity ?? ""
              : userMetaData?.shippingCountry ?? "";
          address1.text = arguments["type"] == "billing"
              ? userMetaData?.billingAddress1 ?? ""
              : userMetaData?.shippingAddress1 ?? "";
          address2.text = arguments["type"] == "billing"
              ? userMetaData?.billingAddress2 ?? ""
              : userMetaData?.shippingAddress2 ?? "";
          postcode.text = arguments["type"] == "billing"
              ? userMetaData?.billingPostcode ?? ""
              : userMetaData?.shippingPostcode ?? "";
          phone.text = arguments["type"] == "billing"
              ? userMetaData?.billingPhone ?? ""
              : userMetaData?.shippingPhone ?? "";
          email.text = arguments["type"] == "billing"
              ? userMetaData?.billingEmail ?? ""
              : userMetaData?.shippingEmail ?? "";

          //获取插件国家信息
          List<CountryCode> flCountryCodes = countryPicker.countryCodes;
          //查找当前用户已设置的国家
          List<CountryCode> currentCountry = flCountryCodes.where(
            (element) {
              return element.code ==
                  (arguments["type"] == "billing"
                      ? userMetaData?.billingCountry
                      : userMetaData?.shippingCountry);
            },
          ).toList();
          if (currentCountry.isNotEmpty) {
            //赋值给页面
            country.text = currentCountry[0].localize(Get.context!).name;
          }
          getStates();
        }
      }
    } finally {
      isloading.value = false;
    }
  }
}
