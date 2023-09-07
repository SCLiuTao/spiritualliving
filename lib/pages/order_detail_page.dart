import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common/models/orders_model.dart';

class OrderDetailPage extends StatelessWidget {
  final OrdersModel ordersModel;
  const OrderDetailPage({
    Key? key,
    required this.ordersModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DataTable(
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
                rows: ordersModel.orderItem!
                    .map((e) => DataRow(cells: [
                          DataCell(Text('${e.name} x${e.qty}')),
                          DataCell(Text('\$${e.amount}'))
                        ]))
                    .toList()
                  ..add(
                    DataRow(cells: [
                      const DataCell(Text('小計:')),
                      DataCell(Text('\$${ordersModel.orderSubtotalAmount}')),
                    ]),
                  )
                  ..add(
                    DataRow(cells: [
                      const DataCell(Text('運送方式:')),
                      DataCell(Text('${ordersModel.orderShippingMethod}')),
                    ]),
                  )
                  ..add(
                    DataRow(cells: [
                      const DataCell(Text('付款方式:')),
                      DataCell(Text('${ordersModel.orderPaymentMethod}')),
                    ]),
                  )
                  ..add(
                    DataRow(cells: [
                      const DataCell(Text('總計:')),
                      DataCell(Text('\$${ordersModel.orderTotalAmount}')),
                    ]),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
