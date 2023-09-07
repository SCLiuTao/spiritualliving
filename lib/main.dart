import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'routes/app_pages.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart' as flc;
import 'package:flutter_localizations/flutter_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await GetStorage.init();
  // if (Platform.isAndroid) {
  //   SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
  //     systemNavigationBarColor: Color.fromARGB(255, 141, 63, 155),
  //     statusBarColor: Color.fromARGB(255, 61, 64, 243),
  //   );
  //   SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  // }
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.dashboard,
      supportedLocales: flc.supportedLocales.map((e) => Locale(e)),
      localizationsDelegates: const [
        flc.CountryLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        scaffoldBackgroundColor: Colors.white70,
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: Colors.white,
          elevation: 0.0,
          labelTextStyle: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.selected)) {
                return const TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0);
              }
              return null;
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
