import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../common/utils/ios_dialog.dart';
import '../controller/mine_controller.dart';
import '../routes/app_pages.dart';

///个人中心
class Mine extends StatelessWidget {
  Mine({super.key});
  final mineController = Get.put(MineController());
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: Get.width * 0.04,
        right: Get.width * 0.04,
      ),
      width: double.infinity,
      height: double.infinity,
      child: _buildNavigationBarList(buildContext: context),
    );
  }

  ///列表
  Widget _buildNavigationBarList({required BuildContext buildContext}) {
    return ListView(
      children: [
        navigationBarList(
            icon: Icons.reorder,
            iconColor: Colors.purple[600],
            title: "訂單",
            onTap: () {
              Get.toNamed(Routes.order);
            }),
        navigationBarList(
          icon: Icons.assignment,
          title: "帳單地址",
          iconColor: const Color.fromARGB(255, 95, 32, 122),
          onTap: () => Get.toNamed(Routes.customerAddress,
              arguments: {"title": "帳單地址", "type": "billing"}),
        ),
        navigationBarList(
          icon: Icons.shopping_bag_outlined,
          iconColor: const Color.fromARGB(255, 99, 29, 3),
          title: "運送地址",
          onTap: () => Get.toNamed(Routes.customerAddress,
              arguments: {"title": "運送地址", "type": "shipping"}),
        ),
        navigationBarList(
          icon: Icons.person,
          iconColor: const Color.fromARGB(255, 89, 138, 96),
          title: "帳戶詳細資料",
          onTap: () => Get.toNamed(Routes.profile),
        ),
        navigationBarList(
            iconColor: Colors.grey[800],
            icon: Icons.logout,
            title: "登出",
            onTap: () => iosDialog(
                context: buildContext,
                content: "確定退出登錄?",
                confirm: () => mineController.loginOut())),
        navigationBarList(
            iconColor: const Color.fromARGB(255, 167, 36, 36),
            icon: Icons.power_settings_new,
            title: "注銷",
            onTap: () => iosDialog(
                context: buildContext,
                content: "確定注銷?",
                confirm: () => mineController.deleteAccount())),
        // navigationBarList(
        //   iconColor: const Color.fromARGB(255, 95, 32, 122),
        //   icon: Icons.language_rounded,
        //   title: "语言",
        //   onTap: () => showBarModalBottomSheet(
        //     context: buildContext,
        //     builder: (context) => const Languages(),
        //   ),
        // ),
      ],
    );
  }

  Widget navigationBarList(
      {required IconData icon,
      required String title,
      void Function()? onTap,
      Color? iconColor}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  width: 1.0, color: Color.fromARGB(255, 241, 241, 241)))),
      child: ListTile(
        contentPadding: const EdgeInsets.only(left: 0),
        leading: Icon(
          icon,
          size: 28.0,
          color: iconColor,
        ),
        title: Text(title),
        trailing: Icon(
          Icons.chevron_right,
          color: Colors.grey[500],
        ),
        onTap: onTap,
      ),
    );
  }
}
