import 'dart:developer';

import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:get/get.dart';
import 'package:spiritualliving/common/config.dart';

import '../common/models/country_states_model.dart';
import '../common/models/orders_model.dart';

class OrderDetailPage extends StatefulWidget {
  final OrdersModel ordersModel;
  const OrderDetailPage({
    Key? key,
    required this.ordersModel,
  }) : super(key: key);

  @override
  State<OrderDetailPage> createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
  String billingCountryName = "";
  String billingStateName = "";
  String shippingCountryName = "";
  String shippingStateName = "";

  @override
  void initState() {
    super.initState();
    final orderBillingAddress = widget.ordersModel.orderBillingAddress;
    final orderShippingAddress = widget.ordersModel.orderShippingAddress;
    if (orderBillingAddress != null && orderBillingAddress.country != "") {
      final List<CountryCode> currentCountyList =
          countryList(currentCode: orderBillingAddress.country);
      billingCountryName = currentCountyList[0].localize(Get.context!).name;

      getStates(
          countryCode: orderBillingAddress.country,
          stateCode: orderBillingAddress.state,
          addressType: false);
    }
    if (orderShippingAddress != null && orderShippingAddress.country != "") {
      final List<CountryCode> currentCountyList =
          countryList(currentCode: orderShippingAddress.country);
      shippingCountryName = currentCountyList[0].localize(Get.context!).name;

      getStates(
        countryCode: orderShippingAddress.country,
        stateCode: orderShippingAddress.state,
        addressType: true,
      );
    }
  }

  ///获取国家列表
  List<CountryCode> countryList({String? currentCode}) {
    //获取插件国家信息
    List<CountryCode> flCountryCodes = const FlCountryCodePicker().countryCodes;
    //查找当前用户已设置的国家
    List<CountryCode> currentCountry = flCountryCodes.where(
      (element) {
        return element.code == currentCode;
      },
    ).toList();
    return currentCountry;
  }

  ///获取省州或区
  Future<void> getStates(
      {String? countryCode,
      String? stateCode,
      bool? addressType = false}) async {
    var tempCountryCode = countryCode!.toLowerCase();
    if (tempCountryCode.isNotEmpty) {
      var statesJson = await rootBundle
          .loadString("assets/country_states_json/zh-hans.json");
      CountryState countryState = countryStateFromJson(statesJson);
      var states = countryState.toJson()[tempCountryCode.toUpperCase()];
      if (states is Map) {
        if (states.containsKey(stateCode)) {
          if (addressType == false) {
            billingStateName = states[stateCode];
          } else {
            shippingStateName = states[stateCode];
          }
          setState(() {});
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final orderBillingAddress = widget.ordersModel.orderBillingAddress;
    final orderShippingAddress = widget.ordersModel.orderShippingAddress;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.amber,
          automaticallyImplyLeading: false,
          title: const Text("訂單詳情"),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () => Get.back(), icon: const Icon(Icons.close)),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DataTable(
                border: TableBorder.all(
                  color: const Color.fromARGB(255, 220, 220, 221),
                  width: 1.0,
                  style: BorderStyle.solid,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                columns: const [
                  DataColumn(label: Text("商品")),
                  DataColumn(label: Text("總計")),
                ],
                rows: widget.ordersModel.orderItem!
                    .map((e) => DataRow(cells: [
                          DataCell(Text('${e.name} x${e.qty}')),
                          DataCell(Text('\$${e.amount}'))
                        ]))
                    .toList()
                  ..add(
                    DataRow(cells: [
                      const DataCell(Text('小計:')),
                      DataCell(
                          Text('\$${widget.ordersModel.orderSubtotalAmount}')),
                    ]),
                  )
                  ..add(
                    DataRow(cells: [
                      const DataCell(Text('運送方式:')),
                      DataCell(
                          Text('${widget.ordersModel.orderShippingMethod}')),
                    ]),
                  )
                  ..add(
                    DataRow(cells: [
                      const DataCell(Text('付款方式:')),
                      DataCell(
                          Text('${widget.ordersModel.orderPaymentMethod}')),
                    ]),
                  )
                  ..add(
                    DataRow(cells: [
                      const DataCell(Text('總計:')),
                      DataCell(
                          Text('\$${widget.ordersModel.orderTotalAmount}')),
                    ]),
                  ),
              ),
              SizedBox(height: Config.space),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text("帳單地址"),
                subtitle: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 220, 220, 221),
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "$billingCountryName ${orderBillingAddress!.postcode}"),
                        Text(
                            "$billingStateName,${orderBillingAddress.city},${orderBillingAddress.address2},${orderBillingAddress.address1}"),
                        if (orderBillingAddress.company != "")
                          Text("${orderBillingAddress.company}"),
                        Text(
                            "${orderBillingAddress.firstName} ${orderBillingAddress.lastName}"),
                        if (orderBillingAddress.phone != "")
                          Row(
                            children: [
                              const Icon(
                                Icons.phone,
                                size: 16.0,
                              ),
                              const SizedBox(width: 5.0),
                              Text("${orderBillingAddress.phone}")
                            ],
                          ),
                        if (orderBillingAddress.email != "")
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.email,
                                size: 16.0,
                              ),
                              const SizedBox(width: 5.0),
                              Expanded(
                                  child: Text("${orderBillingAddress.email}"))
                            ],
                          )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: Config.space),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text("運送地址"),
                subtitle: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 220, 220, 221),
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "$shippingCountryName ${orderShippingAddress!.postcode}"),
                        Text(
                            "$shippingStateName,${orderShippingAddress.city},${orderShippingAddress.address2},${orderShippingAddress.address1}"),
                        if (orderBillingAddress.company != "")
                          Text("${orderShippingAddress.company}"),
                        Text(
                            "${orderShippingAddress.firstName} ${orderShippingAddress.lastName}"),
                        if (orderShippingAddress.phone != "")
                          Row(
                            children: [
                              const Icon(
                                Icons.phone,
                                size: 16.0,
                              ),
                              const SizedBox(width: 5.0),
                              Text("${orderShippingAddress.phone}")
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
