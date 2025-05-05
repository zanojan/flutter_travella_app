import 'package:flutter/material.dart';

class FontSize {
  static const caption = 10.0;
  static const caption2 = 12.0;
  static const body = 14.0;
  static const header3 = 16.0;
  static const header2 = 20.0;
  static const header1 = 24.0;
}

class FontFamily {
  static const primary = 'Poppins';
}

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Color(0xffFFFFFF),
    primary: Color(0xffFBF4E3),
    secondary: Color(0xff7B5131),
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontSize: FontSize.header1,
      fontFamily: FontFamily.primary,
      fontWeight: FontWeight.w700,
    ),
    headlineMedium: TextStyle(
      fontSize: FontSize.header2,
      fontFamily: FontFamily.primary,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: TextStyle(
      fontSize: FontSize.header3,
      fontFamily: FontFamily.primary,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: TextStyle(
      fontSize: FontSize.body,
      fontFamily: FontFamily.primary,
      fontWeight: FontWeight.w400
    ),
    labelSmall: TextStyle(
      fontSize: FontSize.caption,
      fontFamily: FontFamily.primary,
      fontWeight: FontWeight.w400
    ),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Color(0xff000000),
    primary: Color(0xffFBF4E3),
    secondary: Color(0xff7B5131),
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontSize: FontSize.header1,
      fontFamily: FontFamily.primary,
      fontWeight: FontWeight.w700,
    ),
    headlineMedium: TextStyle(
      fontSize: FontSize.header2,
      fontFamily: FontFamily.primary,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: TextStyle(
      fontSize: FontSize.header3,
      fontFamily: FontFamily.primary,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: TextStyle(
      fontSize: FontSize.body,
      fontFamily: FontFamily.primary,
      fontWeight: FontWeight.w400
    ),
    labelSmall: TextStyle(
      fontSize: FontSize.caption,
      fontFamily: FontFamily.primary,
      fontWeight: FontWeight.w400
    ),
  ),
);
