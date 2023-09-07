import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../common/config.dart';
import '../controller/dashboard_controller.dart';
import 'in_app_web_page.dart';
import 'mine_page.dart';

class Dashboard extends GetView<DashboardController> {
  Dashboard({super.key});
  final dashboardCtl = Get.put(DashboardController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildNavigationBar(),
      body: TabBarView(
        controller: controller.tabController,
        children: <Widget>[
          InAppWebpage(requerstUrl: Config.homeUrl),
          InAppWebpage(requerstUrl: Config.shopUrl),
          InAppWebpage(requerstUrl: Config.cartUrl),
          Mine()
        ],
      ),
    );
  }

  Widget _buildNavigationBar() {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
            border:
                Border(top: BorderSide(width: 1, color: Colors.grey[200]!))),
        child: NavigationBar(
          shadowColor: Colors.black,
          selectedIndex: controller.currentIndex.value,
          indicatorColor: Colors.green,
          destinations: controller.tabValues,
          onDestinationSelected: (index) async {
            await controller.changBarIndex(index: index);
          },
        ),
      ),
    );
  }
}
