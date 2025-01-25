import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';
import 'app_geometry.dart';
import 'app_size.dart';

class AppTheme {
  static TextStyle _w700({required double fontSize, Color? color}) =>
      GoogleFonts.lilyScriptOne(
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
        color: color,
      );

  static TextStyle _w600({required double fontSize, Color? color}) =>
      GoogleFonts.lilyScriptOne(
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
        color: color,
      );

  static TextStyle _w500({required double fontSize, Color? color}) =>
      GoogleFonts.lilyScriptOne(
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        color: color,
      );

  static TextStyle _w400({required double fontSize, Color? color}) =>
      GoogleFonts.lilyScriptOne(
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
        color: color,
      );

  static TextTheme _textTheme({required Color color}) => TextTheme(
        displayLarge: _w700(fontSize: AppSize.size64, color: color),
        displayMedium: _w600(fontSize: AppSize.size57, color: color),
        displaySmall: _w600(fontSize: AppSize.size38, color: color),
        headlineLarge: _w400(fontSize: AppSize.size32, color: color),
        headlineMedium: _w600(fontSize: AppSize.size28, color: color),
        headlineSmall: _w600(fontSize: AppSize.size24, color: color),
        titleLarge: _w400(fontSize: AppSize.size22, color: color),
        titleMedium: _w500(fontSize: AppSize.size16, color: color),
        titleSmall: _w500(fontSize: AppSize.size14, color: color),
        bodyLarge: _w400(fontSize: AppSize.size16, color: color),
        bodyMedium: _w400(fontSize: AppSize.size14, color: color),
        bodySmall: _w400(fontSize: AppSize.size12, color: color),
        labelLarge: _w700(fontSize: AppSize.size14, color: color),
        labelMedium: _w500(fontSize: AppSize.size12, color: color),
        labelSmall: _w500(fontSize: AppSize.size11, color: color),
      );

  static ListTileThemeData _listTileTheme() => const ListTileThemeData(
        dense: true,
        contentPadding: EdgeInsets.zero,
        visualDensity: VisualDensity(horizontal: -4, vertical: -4),
      );

  static InputBorder _outlineInputBorder({required Color borderColor}) =>
      OutlineInputBorder(
        borderRadius: AppBorderRadius.a10,
        borderSide: BorderSide(color: borderColor),
      );

  static InputDecorationTheme _inputDecorationTheme(
      {required Color fillColor, required Color borderColor}) {
    return InputDecorationTheme(
      filled: true,
      fillColor: fillColor,
      labelStyle: _w400(fontSize: AppSize.size16, color: borderColor),
      hintStyle: _w400(fontSize: AppSize.size22, color: AppColors.grey),
      contentPadding: AppEdgeInsets.a10,
      focusedBorder: _outlineInputBorder(borderColor: borderColor),
      disabledBorder: _outlineInputBorder(borderColor: AppColors.lightGrey),
      enabledBorder: _outlineInputBorder(borderColor: borderColor),
      errorBorder: _outlineInputBorder(borderColor: AppColors.red),
      focusedErrorBorder: _outlineInputBorder(borderColor: AppColors.red),
    );
  }

  static TextSelectionThemeData _textSelectionThemeData() =>
      const TextSelectionThemeData(cursorColor: AppColors.black);

  static IconThemeData _iconThemeData({required Color color}) => IconThemeData(
        size: AppSize.size24,
        color: color,
      );

  static ElevatedButtonThemeData _elevatedButtonThemeData() =>
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 2,
          backgroundColor: AppColors.blue,
          foregroundColor: AppColors.white,
          textStyle: _w600(fontSize: AppSize.size16),
          shape: const RoundedRectangleBorder(
            borderRadius: AppBorderRadius.a10,
          ),
        ),
      );

  static FloatingActionButtonThemeData _floatingActionButtonThemeData() =>
      const FloatingActionButtonThemeData(
        backgroundColor: AppColors.blue,
        foregroundColor: AppColors.white,
        elevation: 2,
      );

  static TextButtonThemeData _textButtonThemeData() => TextButtonThemeData(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          foregroundColor: AppColors.black,
          textStyle: _w600(fontSize: AppSize.size24),
        ),
      );

  static SliderThemeData _sliderThemeData() => SliderThemeData(
        activeTrackColor: AppColors.blue,
        inactiveTrackColor: AppColors.lightGrey,
        thumbColor: AppColors.blue,
        overlayColor: AppColors.blue,
        overlayShape: SliderComponentShape.noThumb,
      );

  static BadgeThemeData _badgeThemeData({
    required Color backgroundColor,
  }) =>
      BadgeThemeData(
        textStyle: _w500(fontSize: AppSize.size10),
        backgroundColor: backgroundColor,
      );

  static AppBarTheme _appBarTheme() => AppBarTheme(
        centerTitle: true,
        iconTheme: IconThemeData(
          size: AppSize.size24,
          color: AppColors.black,
        ),
        titleTextStyle: _w700(
          fontSize: AppSize.size24,
          color: AppColors.black,
        ),
      );

  // static ThemeData lightTheme = ThemeData(
  //   primarySwatch: Colors.blue,
  //   primaryColor: Colors.blueAccent,
  //   scaffoldBackgroundColor: Colors.black,
  //   textTheme: const TextTheme(
  //     displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
  //     bodyLarge: TextStyle(fontSize: 16),
  //   ),
  //   appBarTheme: const AppBarTheme(
  //     backgroundColor: Colors.blueAccent,
  //     elevation: 0,
  //   ),
  //   buttonTheme: const ButtonThemeData(
  //     buttonColor: Colors.blueAccent,
  //     textTheme: ButtonTextTheme.primary,
  //   ),
  // );

  static ThemeData get lightTheme => ThemeData(
        appBarTheme: _appBarTheme(),
        badgeTheme: _badgeThemeData(backgroundColor: AppColors.blue),
        colorScheme: const ColorScheme.light(primary: AppColors.lightBlue),
        dividerColor: AppColors.lightGrey,
        elevatedButtonTheme: _elevatedButtonThemeData(),
        floatingActionButtonTheme: _floatingActionButtonThemeData(),
        iconTheme: _iconThemeData(color: AppColors.black),
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            padding: EdgeInsets.zero,
            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
            iconSize: AppSize.size24,
            tapTargetSize: MaterialTapTargetSize.padded,
          ),
        ),
        inputDecorationTheme: _inputDecorationTheme(
          fillColor: AppColors.black,
          borderColor: AppColors.borderColor,
        ),
        listTileTheme: _listTileTheme(),
        progressIndicatorTheme:
            const ProgressIndicatorThemeData(color: AppColors.orange),
        scaffoldBackgroundColor: AppColors.black,
        sliderTheme: _sliderThemeData(),
        textButtonTheme: _textButtonThemeData(),
        textSelectionTheme: _textSelectionThemeData(),
        textTheme: _textTheme(color: AppColors.white),
      );

  /// Define dark theme
// static ThemeData darkTheme = ThemeData(
//   brightness: Brightness.dark,
//   primaryColor: Colors.tealAccent,
//   scaffoldBackgroundColor: Colors.black,
//   textTheme: const TextTheme(
//     displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
//     bodyLarge: TextStyle(fontSize: 16, color: Colors.white70),
//   ),
//   appBarTheme: const AppBarTheme(
//     backgroundColor: Colors.tealAccent,
//     elevation: 0,
//   ),
//   buttonTheme: const ButtonThemeData(
//     buttonColor: Colors.tealAccent,
//     textTheme: ButtonTextTheme.primary,
//   ),
// );
}
