import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:spiritualliving/pages/order_detail_page.dart';
import 'package:spiritualliving/routes/app_pages.dart';
import '../common/config.dart';
import '../common/utils/index.dart';
import '../controller/dashboard_controller.dart';
import '../controller/order_controller.dart';

class OrderPage extends GetView<OrderController> {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('我的訂單'),
        centerTitle: true,
      ),
      body: SafeArea(child: _mianBuild(context)),
    );
  }

  Widget _mianBuild(BuildContext context) {
    return Obx(() {
      if (controller.isloading.value) {
        return threeInOutWiget();
      } else {
        if (controller.orders!.length > 1) {
          return EasyRefresh(
            controller: controller.easyRefreshController,
            onRefresh: () {
              controller.pullToRefresh();
              controller.easyRefreshController.finishRefresh();
              controller.easyRefreshController.resetFooter();
            },
            onLoad: () async {
              await controller.pullToLoad();
              controller.easyRefreshController.finishLoad(controller.noMore
                  ? IndicatorResult.noMore
                  : IndicatorResult.success);
            },
            child: GetBuilder<OrderController>(
              init: OrderController(),
              initState: (_) {},
              id: "content",
              builder: (_) {
                return ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: Config.space),
                  itemCount: controller.orders!.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = controller.orders![index];
                    return Card(
                      color: Colors.white,
                      child: ListTile(
                        title: Text("訂單：#${item.orderNumber!}"),
                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("日期：${item.orderDate}"),
                            Text(
                                "狀態：${item.orderStatus == "pending" ? "待支付" : item.orderStatus == "processing" ? "處理中" : item.orderStatus == "on-hold" ? "暫停" : item.orderStatus == "completed" ? "已完成" : item.orderStatus == "cancelled" ? "已取消" : item.orderStatus == "refunded" ? "已退款" : "失敗"}"),
                            Text(
                                "總計：\$${item.orderTotalAmount} (共 ${item.orderQty} 件商品)"),
                          ],
                        ),
                        trailing: Icon(
                          Icons.chevron_right,
                          color: Colors.grey[500],
                        ),
                        onTap: () => showBarModalBottomSheet(
                          context: context,
                          builder: (context) => OrderDetailPage(
                            ordersModel: item,
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          );
        } else {
          return Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "暫無訂單",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(
                  height: 20,
                ),
                ActionChip(
                  label: const Text("現在去選購"),
                  labelStyle:
                      const TextStyle(color: Colors.white, fontSize: 20.0),
                  backgroundColor: Colors.deepPurple,
                  onPressed: () {
                    final dashboard = Get.find<DashboardController>();
                    dashboard.changBarIndex(index: 1);
                    Get.toNamed(Routes.dashboard);
                  },
                )
              ],
            ),
          );
        }
      }
    });
  }
}
