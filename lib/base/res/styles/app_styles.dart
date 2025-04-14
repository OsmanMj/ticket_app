import 'dart:ui';
import 'package:flutter/material.dart';

Color priamry = const Color(0xFF687daf);

class AppStyles {
  static Color priamryColor = priamry;
  static Color bgColor = const Color.fromARGB(193, 231, 231, 231);
  static Color textColor = const Color(0xFF3b3b3b);
  static Color ticketBlue = const Color(0xFF526799);
  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);

  static TextStyle headLineStyle1 =
      const TextStyle(fontSize: 26, fontWeight: FontWeight.w500);

  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: textColor);

  static TextStyle headLineStyle3 = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );
}
