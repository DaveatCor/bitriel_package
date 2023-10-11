import 'package:flutter/material.dart';

class BitrielTheme {

  static Color primaryColor = const Color(0xFF0e4af5);
  static Color blueShadowColor = const Color(0xFF080f20);
  static Color secondaryColor = const Color(0xFFffffff);
  static Color actionColor = const Color(0xFFfbc330);
  static Color vipColor = const Color(0xFFb88f4f);
  static Color redColor = const Color(0xFFff4757);
  static Color blackColor = const Color(0xFF000000);
  static Color blueBlackColor = const Color(0xFF042379);
  static Color blueWhiteColor = const Color(0xFF082983);

  ThemeData? themeData;

  set setThemeData(Colors? primary){
    if (primary == null){
      themeData = ThemeData(
        primaryColor: primaryColor
      );
    }
  }

}