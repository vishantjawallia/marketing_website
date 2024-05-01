import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketing_website/config/preference.dart';
import 'package:marketing_website/views/home/home_view.dart';
import 'config/config.dart';
import './routes.dart';
import 'theme/theme.dart';

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
      themeMode: ThemeMode.light,
      theme: Themes.light(),
      darkTheme: Themes.dark(),
      home: HomeView(),
      getPages: getPages,
    );
  }
}
