import 'package:flutter/material.dart';

class PortfolioTheme {
  PortfolioTheme._();

  static const Color nearlyWhite = Color(0xFFFAFAFA);
  static const Color white = Color(0xFFFFFFFF);

  static const Color kPrimaryLightColor = Color(0xff5C91F9);
  static const Color kPrimaryColor = Color(0xff60C689);

  static TextStyle heading = const TextStyle(
      fontFamily: "DMsans",
      fontSize: 18,
      letterSpacing: -0.5,
      fontWeight: FontWeight.w800,
      color: Colors.white);

  static TextStyle subHeading = const TextStyle(
      fontFamily: 'DMsans',
      fontSize: 18,
      letterSpacing: -0.5,
      color: Colors.white70,
      fontWeight: FontWeight.w500);

  static TextStyle title = const TextStyle(
      fontFamily: "DMsans",
      fontSize: 20,
      color: kPrimaryColor,
      fontWeight: FontWeight.w800);

  static TextStyle date = const TextStyle(
      color: Colors.white54,
      fontSize: 16,
      fontFamily: "DMsans",
      fontWeight: FontWeight.w500);

  static TextStyle highlightText =
      const TextStyle(fontFamily: "DMsans", fontSize: 20, color: kPrimaryColor);
}
