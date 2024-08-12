import 'package:flutter/material.dart';

class FontStyles  {
  static TextStyle boldTextStyle() {
    return TextStyle(
        color: Colors.white,
        fontSize: 45.0,
        fontWeight: FontWeight.w600,
        fontFamily: "Oswald");
  }

  static TextStyle boldTextStyle2() {
    return TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        fontFamily: "Oswald");
  }

  static TextStyle messageStyle() {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontFamily: "Oswald");
  }

  static TextStyle ChatTextStyle() {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w300,
        fontFamily: "Oswald");
  }
}