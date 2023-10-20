import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/features/landing_page/landing_page.dart';
import 'package:shop/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "E-COMMERCE",
      theme: ThemeData(
        textTheme: const TextTheme(
          headline6: TextStyle(
            fontSize: 14.5,
            letterSpacing: 0.15,
          color: AppColor.heading6
          ),
          bodyText1: TextStyle(
            color: AppColor.bodyColor1,
            fontSize: 20,
          ),
          caption: TextStyle(
            fontSize: 11,
            color: AppColor.captionColor
          ),
        ),
      ),
      home: Landing_Page(),
    );
  }

}