import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

iosDialog(
    {required BuildContext context,
    required String content,
    void Function()? candel,
    required void Function() confirm,
    String? confirmText}) {
  return showCupertinoDialog(
    context: context,
    builder: (context) {
      return CupertinoAlertDialog(
        title: const Text("系統提示"),
        content: Text(content),
        actions: [
          CupertinoDialogAction(
            child: const Text("取消"),
            onPressed: () => candel ?? Get.back(),
          ),
          CupertinoDialogAction(
              onPressed: confirm, child: Text(confirmText ?? "確認"))
        ],
      );
    },
  );
}
