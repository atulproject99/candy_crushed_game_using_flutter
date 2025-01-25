import 'package:flutter/material.dart';

class AppColors {
  static const Color transparent = Color(0x00000000);

  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color red = Color(0xFFC90911);
  static const Color green = Color(0xFF4CAF50);

  static const Color blue = Color(0xFF0D5A68);
  static const Color lightBlue = Color(0xFF2EB3B8);
  static const Color grey = Color(0xFFB3B3B3);
  static const Color lightGrey = Color(0xFFE8E8E8);
  static const Color orange = Color(0xffFB8D48);
  static const Color borderColor = Color.fromRGBO(241, 122, 60, 1);
  static const Color darkColor = Color(0xff1f1f1f);
}

class AppGradient {
  static const LinearGradient orangeToPurple = LinearGradient(
    colors: [
      Color(0xFFFB8D48),
      Color(0xFFED7136),
      Color(0xFFC54E47),
      Color(0xFFC14F49),
      Color(0xFF9D3863),
      Color(0xFF5E1F72),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
