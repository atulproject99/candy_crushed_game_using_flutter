import 'package:flutter/material.dart';

class AppEdgeInsets {
  static const a5 = EdgeInsets.all(5);
  static const a10 = EdgeInsets.all(10);
  static const a15 = EdgeInsets.all(15);
  static const a20 = EdgeInsets.all(20);
  static const a25 = EdgeInsets.all(25);
  static const a30 = EdgeInsets.all(30);
  static const a50 = EdgeInsets.all(50);

  static const h20 = EdgeInsets.symmetric(horizontal: 20);
  static const h100 = EdgeInsets.symmetric(horizontal: 100);
  static const h150 = EdgeInsets.symmetric(horizontal: 150);
  static const h200 = EdgeInsets.symmetric(horizontal: 200);
  static const h20v10 = EdgeInsets.symmetric(vertical: 10, horizontal: 20);
  static const h20v15 = EdgeInsets.symmetric(vertical: 15, horizontal: 20);
  static const h30V20 = EdgeInsets.symmetric(vertical: 20, horizontal: 30);
  static const h150v25 = EdgeInsets.symmetric(vertical: 25, horizontal: 150);
  static const b5 = EdgeInsets.only(bottom: 5);
  static const t5 = EdgeInsets.only(top: 5);

  static const v15 = EdgeInsets.symmetric(vertical: 15);
}

class AppBorderRadius {
  static const a5 = BorderRadius.all(Radius.circular(5));
  static const a10 = BorderRadius.all(Radius.circular(10));
  static const a12 = BorderRadius.all(Radius.circular(12));
  static const a15 = BorderRadius.all(Radius.circular(15));
  static const a20 = BorderRadius.all(Radius.circular(20));
  static const a25 = BorderRadius.all(Radius.circular(25));
  static const a40 = BorderRadius.all(Radius.circular(40));
  static const a50 = BorderRadius.all(Radius.circular(50));
  static const tr20Br20 = BorderRadius.only(
      topRight: Radius.circular(40), bottomRight: Radius.circular(40));
  static const a100 = BorderRadius.all(Radius.circular(100));
}
