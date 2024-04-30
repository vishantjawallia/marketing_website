// ignore_for_file: void_checks

import 'package:e_com_flutter_app/config/config.dart';
import 'package:e_com_flutter_app/config/preference.dart';
import 'package:e_com_flutter_app/routes.dart';
import 'package:e_com_flutter_app/theme/theme.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'api/api_repo.dart';
import 'views/splash/splash_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferenceHelper.init();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: APP_NAME,
      themeMode: ThemeMode.dark,
      theme: Themes.light(),
      darkTheme: Themes.dark(),
      home: SplashView(),
      getPages: routes,
    );
  }
}
