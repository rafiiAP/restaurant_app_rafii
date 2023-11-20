import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:oktoast/oktoast.dart';
import 'package:restaurant_app_rafii/presentation/page/home_restaurant/home_restaurant_page.dart';
import 'package:restaurant_app_rafii/style/main_style.dart';
import 'injection.dart' as di;

void main() {
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Restaurant_app_rafii',
        theme: MainStyle.light,
        darkTheme: MainStyle.dark,
        themeMode: ThemeMode.system,
        home: HomeRestaurant(),
      ),
    );
  }
}
