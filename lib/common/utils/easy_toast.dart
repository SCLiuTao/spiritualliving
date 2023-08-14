import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

showSuccess(String msg, {int? showTime}) {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.green
    ..backgroundColor = Colors.black
    ..indicatorColor = Colors.green
    ..textColor = Colors.green
    ..maskColor = Colors.transparent
    ..userInteractions = true
    ..dismissOnTap = false;
  EasyLoading.showSuccess(
    msg,
    duration: Duration(seconds: showTime ?? 3),
    maskType: EasyLoadingMaskType.custom,
  );
}

showError(String msg) {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.red
    ..backgroundColor = Colors.black
    ..indicatorColor = Colors.red
    ..textColor = Colors.red
    ..maskColor = Colors.transparent
    ..userInteractions = true
    ..dismissOnTap = false;
  EasyLoading.showError(
    msg,
    maskType: EasyLoadingMaskType.custom,
  );
}

showloading(String msg) {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.white
    ..backgroundColor = Colors.black
    ..indicatorColor = Colors.white
    ..textColor = Colors.white
    ..maskColor = Colors.black.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
  EasyLoading.show(
    status: msg,
    maskType: EasyLoadingMaskType.custom,
  );
}

showToast(String msg) {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.red
    ..backgroundColor = Colors.black
    ..indicatorColor = Colors.red
    ..textColor = Colors.red
    ..maskColor = Colors.black.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
  EasyLoading.showToast(
    msg,
    maskType: EasyLoadingMaskType.custom,
  );
}
