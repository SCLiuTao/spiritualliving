import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await GetStorage.init();
  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
      systemNavigationBarColor: Color.fromARGB(255, 141, 63, 155),
    );
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.inAppWeb,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            brightness: Brightness.light,
            onSurface: Colors.white),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Color.fromARGB(255, 61, 64, 243),
          centerTitle: true,
        ),
        navigationBarTheme: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.selected)) {
                return const TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0);
              }
              return TextStyle(color: Colors.white.withOpacity(.85));
            },
          ),
          iconTheme: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.selected)) {
                return const IconThemeData(size: 24, color: Colors.white);
              }
              return IconThemeData(
                  size: 22, color: Colors.white.withOpacity(.85));
            },
          ),
        ),
      ),
      defaultTransition: Transition.fade,
      getPages: AppPages.routes,
      builder: (context, child) {
        final easyLoading = EasyLoading.init();
        child = easyLoading(context, child);
        return child;
      },
    ),
  );
}
