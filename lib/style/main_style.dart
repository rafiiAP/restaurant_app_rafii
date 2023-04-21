import 'package:flutter/material.dart';

import 'color.dart';
// import 'package:google_fonts/google_fonts.dart';

class MainStyle {
  static final light = ThemeData(
    scaffoldBackgroundColor: ColorConfig.primaryWhite,
    colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: ColorConfig.mainColor, onBackground: ColorConfig.mainColor),
    primaryColor: ColorConfig.mainColor,
    brightness: Brightness.light,
    cardTheme: const CardTheme(
      color: ColorConfig.mainTransparent,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 96,
        fontWeight: FontWeight.w300,
      ),
      displayMedium: TextStyle(
        fontSize: 60,
        fontWeight: FontWeight.w300,
      ),
      displaySmall: TextStyle(fontSize: 48, fontWeight: FontWeight.w400),
      headlineMedium: TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.w400,
      ),
      headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w400,
      ),
      titleSmall: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
      labelLarge: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w400,
      ),
      labelSmall: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w400,
      ),
    ),
  );

  static final dark = ThemeData(
    scaffoldBackgroundColor: ColorConfig.black,
    brightness: Brightness.dark,
    cardTheme: const CardTheme(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    ),
  );
}

//input text rekening

// SetoranGetx setoranGetx = Get.find();
