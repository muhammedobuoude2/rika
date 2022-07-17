// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:rikaa/feature/view/client_reviews.dart';
import 'package:rikaa/utils/shared/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPref.instance.initPrefs();
  runApp(GetMaterialApp(
    home: ClinetReviews(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        fontFamily: 'Mont',
        sliderTheme: SliderThemeData(),
        tabBarTheme: TabBarTheme(),
        navigationBarTheme: NavigationBarThemeData()
        // inputDecorationTheme:
        ),
  ));
// AppBar(
//   systemOverlayStyle: SystemUiOverlayStyle(
//     // Status bar color
//     statusBarColor: Colors.red,

//     // Status bar brightness (optional)
//     statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
//     statusBarBrightness: Brightness.light, // For iOS (dark icons)
//   ),
// )
}
