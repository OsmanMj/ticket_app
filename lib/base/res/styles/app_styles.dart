import 'package:flutter/material.dart';

Color priamry = const Color(0xFF687daf);

class AppStyles {
  static Color priamryColor = priamry;
  static Color bgColor = const Color.fromARGB(193, 231, 231, 231);
  static Color textColor = const Color(0xFF3b3b3b);
  static Color ticketBlue = const Color(0xFF526799);
  static Color ticketOrange = const Color(0xFFF4511E);
  static Color kakiColor = const Color(0xFFd2bdb6);
  static Color planeColor = const Color(0xFFBFC2DF);
  static Color findTickColor = const Color(0xD91130CE);
  static Color ticketColor = const Color(0xFFFFFFFF);
  static Color dotColor = const Color(0XFF8ACCF7);
  static Color planeSecondColor = const Color(0xFFBACCF7);
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
  static TextStyle headLineStyle4 = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500);
}
